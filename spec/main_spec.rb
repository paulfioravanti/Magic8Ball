describe "Application 'Magic8Ball'" do
  extend SpecHelper

  before do
    @app = Application.application_instance
  end

  it "has one window" do
    @app.windows.size.should.equal(1)
  end

  it "has a root view controller" do
    @app.key_window.root_view_controller.class.should.equal(Magic8BallController)
  end
end
