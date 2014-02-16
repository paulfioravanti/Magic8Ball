class ApplicationWindow < UIWindow
  include UIWindowHelper

  def initialize
    self.frame = DeviceScreen.main_screen.bounds
    self.root_view_controller = Magic8BallController.new
    self.make_key_and_visible
  end
end