module UIViewControllerHelper

  def init
    super
    initialize if self.class.method_defined?(:initialize)
    self
  end

  def loadView
    self.class.method_defined?(:root_view) ? root_view : super
  end

  private

    def animate_with_duration(duration, animations, completion = nil)
      if completion
        UIView.animateWithDuration(duration,
          animations: animations, completion: completion)
      else
        UIView.animateWithDuration(duration, animations: animations)
      end
    end
end