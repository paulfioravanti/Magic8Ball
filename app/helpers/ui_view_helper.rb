module UIViewHelper
  include NSObjectHelper

  def self.included(base)
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

  def scale_in
    self.transform = CGAffineTransformIdentity
  end
end