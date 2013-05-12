class Magic8BallController < UIViewController
  include UIViewControllerHelper

  attr_accessor :magic_8ball, :message_label

  stylesheet :magic_8ball

  def root_view
    self.view = Magic8BallImageView.new
  end

  layout :screen do
    @magic_8ball = Magic8Ball.new
    @message_label = subview(Magic8BallMessageLabel, :message_label)
    view.when_tapped do
      show_answer
    end
  end

  private

    def show_answer
      animate_with_duration(1.0,
        scale_and_fade_out, scale_and_fade_in_new_answer)
    end

    def scale_and_fade_out
      lambda do
        @message_label.make_invisible
        @message_label.scale_out(0.1, 0.1)
      end
    end

    def scale_and_fade_in_new_answer
      lambda do |finished|
        @message_label.text = @magic_8ball.random_answer
        animate_with_duration(1.0, scale_and_fade_in)
      end
    end

    def scale_and_fade_in
      lambda do
        @message_label.make_visible
        @message_label.scale_in
      end
    end
end