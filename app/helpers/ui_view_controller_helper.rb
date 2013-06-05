module UIViewControllerHelper
  def init
    super
    initialize
    self
  end

  def loadView
    respond_to?(:root_view) ? root_view : super
  end

  def viewDidLoad
    respond_to?(:sub_views) ? sub_views : super
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