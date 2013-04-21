class AppDelegate
  attr_reader :window

  def application(application, didFinishLaunchingWithOptions: launchOptions)
    return true if RUBYMOTION_ENV == 'test'
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = Magic8BallViewController.alloc.init
    @window.makeKeyAndVisible
    true
  end
end
