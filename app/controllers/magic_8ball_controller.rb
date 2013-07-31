class Magic8BallController < UIViewController
  include UIViewControllerHelper

  attr_accessor :magic_8ball, :message_label

  stylesheet :magic_8ball

  def root_view
    self.view = Magic8BallImageView.new
  end

  layout :screen do
    @magic_8ball = Magic8Ball.new
    label = Magic8BallMessageLabel.new
    @message_label = subview(label, :message_label)
    view.when_tapped do
      show_answer
    end
  end

  private

    def show_answer
      Magic8BallImageView.animate(1.0, scale_and_fade_out,
        scale_and_fade_in_new_answer)
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
        Magic8BallImageView.animate(1.0, scale_and_fade_in)
      end
    end

    def scale_and_fade_in
      lambda do
        @message_label.make_visible
        @message_label.reset_to_original_state
      end
    end
end