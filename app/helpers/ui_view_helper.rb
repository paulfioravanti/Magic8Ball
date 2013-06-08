module UIViewHelper
  include NSObjectHelper

  def self.included(base)
    base.extend(ClassMethods)
    base.send :alias_method, :add_subview, :addSubview
  end

  def make_invisible
    self.alpha = 0
  end

  def make_visible
    self.alpha = 1
  end

  def scale_out(x_scale_factor, y_scale_factor)
    self.transform = CGAffineTransformMakeScale(x_scale_factor, y_scale_factor)
  end

  # Any time you want to reset a view or layer to its original,
  # untransformed state, set its transform to the Identity Transformation
  def reset_to_original_state
    self.transform = CGAffineTransformIdentity
  end

  module ClassMethods
    def animate(duration, animations, completion = nil)
      if completion
        self.animateWithDuration(duration,
          animations: animations, completion: completion)
      else
        self.animateWithDuration(duration, animations: animations)
      end
    end
  end
end