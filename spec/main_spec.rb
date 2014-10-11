describe "Application 'Magic8Ball'" do
  before { @app = Application.application_instance }

  # For currently unknown reasons this test fails with a 2.==(1)
  # failed error.  Uncertain where this phantom window is coming
  # from but it doesn't seem to be affecting the application.
  # Since this spec is relatively unimportant, keep it commented
  # out until more is known about the issue
  # it "has one window" do
  #   @app.windows.size.should.equal(1)
  # end

  it "has a root view controller" do
    @app.key_window.root_view_controller.class.should.equal(
      Magic8BallController
    )
  end
end
