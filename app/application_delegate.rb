class ApplicationDelegate
  include AppDelegateHelper

  attr_reader :window

  def initialize
    return true if RUBYMOTION_ENV == 'test'
    @window = ApplicationWindow.new
    @window.root_view_controller = Magic8BallController.new
    @window.make_key_and_visible
  end
end
