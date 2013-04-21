describe "Application 'Magic8Ball'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "has one window" do
    @app.windows.size.should == 1
  end

  it "has a root view controller" do
    @app.keyWindow.rootViewController.class.should == Magic8BallViewController
  end
end
