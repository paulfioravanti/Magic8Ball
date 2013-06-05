describe "Magic 8Ball Controller" do
  tests Magic8BallController

  before { @message = "Tap for Answer!" }

  describe "initial state" do
    it "has a background image" do
      controller.view.image.should.be.same_as background_image
    end

    it "asks me to 'Tap for Answer!'" do
      view(@message).should.not.be.nil
      controller.message_label.text.should.equal("Tap for Answer!")
    end
  end

  describe "tapping the screen" do
    before do
      @new_message = "Hi there"
      controller.magic_8ball.stub!(:random_answer, return: @new_message)
      tap 'screen'
    end

    it "removes the current message and displays and new message" do
      view(@new_message).should.not.be.nil
      controller.message_label.text.should.equal(@new_message)
      controller.message_label.text.should.not.equal(@message)
    end
  end
end