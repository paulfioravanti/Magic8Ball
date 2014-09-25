describe "Application 'Magic8Ball'" do
  before { @app = Application.application_instance }

  it "technically has two windows" do
    @app.windows.size.should.equal(2) # not sure about the change in this test...
  end

  it "has a root view controller" do
    @app.key_window.root_view_controller.class.should.equal(
      Magic8BallController
    )
  end
end
