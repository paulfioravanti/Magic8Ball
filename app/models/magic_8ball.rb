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
        json['answers'].map { |string| I18n.t(string) }
      rescue BW::JSON::ParserError => error
        unless RUBYMOTION_ENV == 'test'
          $stderr.puts t('errors.parser_error', error: error.description)
        end
        default_answers
      end
    end

    def default_answers
      [
        'default.default_yes',
        'default.default_no',
        'default.maybe',
        'default.try_again'
      ].map { |string| I18n.t(string) }
    end

end