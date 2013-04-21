class Magic8Ball

  attr_reader :answers

  def initialize
    @answers = load_answers
  end

  def random_answer
    @answers.sample
  end

  private

    def load_answers
      begin
        file = load_file
        json = BW::JSON.parse(file)
        json['answers']
      rescue BW::JSON::ParserError => error
        $stderr.puts "Error: #{error.description}"
        default_answers
      end
    end

    def load_file
      resource_file = "answers.json".resource
      error = Pointer.new(:object)
      file_contents =
        NSData.alloc.initWithContentsOfFile(resource_file,
                                            options: NSDataReadingUncached,
                                            error: error)
      raise ParserError, error[0] if error[0]
      file_contents
    end

    def default_answers
      ['Yes', 'No', 'Maybe', 'Try Again']
    end

end