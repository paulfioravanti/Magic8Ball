class Magic8BallViewController < UIViewController

  attr_accessor :magic_8ball, :message_label

  def loadView
    self.view = UIImageView.alloc.init
  end

  stylesheet :main

  layout :root do
    @magic_8ball = Magic8Ball.new

    @message_label = subview(UILabel, :magic_8ball_message)
    view.when_tapped do
      show_answer
    end
  end

  private

    def show_answer
      UIView.animateWithDuration(1.0,
        animations: scale_and_fade_out,
        completion: scale_and_fade_in_new_answer)
    end

    def scale_and_fade_out
      lambda do
        @message_label.alpha = 0
        @message_label.transform = CGAffineTransformMakeScale(0.1, 0.1)
      end
    end

    def scale_and_fade_in_new_answer
      lambda do |finished|
        @message_label.text = @magic_8ball.random_answer
        UIView.animateWithDuration(1.0, animations: scale_and_fade_in)
      end
    end

    def scale_and_fade_in
      lambda do
        @message_label.alpha = 1
        @message_label.transform = CGAffineTransformIdentity
      end
    end
end