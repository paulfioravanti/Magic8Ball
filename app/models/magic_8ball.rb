class Magic8Ball
  include Magic8BallHelper

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
        file = load_resource_file('answers.json')
        json = BW::JSON.parse(file)
        json['answers']
      rescue BW::JSON::ParserError => error
        unless RUBYMOTION_ENV == 'test'
          $stderr.puts "Error: #{error.description}"
        end
        default_answers
      end
    end

    def default_answers
      ['Yes', 'No', 'Maybe', 'Try Again']
    end

end