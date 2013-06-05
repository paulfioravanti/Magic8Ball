describe "Magic8Ball" do

  before { @magic_8ball = Magic8Ball.new }

  it "generates a random answer" do
    answer = @magic_8ball.random_answer
    @magic_8ball.answers.should.include answer
  end

  describe "answers" do
    describe "when json loaded correctly" do
      it "contains the full answer set when answers loaded" do
        @magic_8ball.answers.should.equal(full_answer_set)
      end
    end

    describe "when json not loaded correctly" do
      before do
        BW::JSON.stub!(:parse) { |file| raise BW::JSON::ParserError }
        @magic_8ball = Magic8Ball.new
      end

      it "contains the default answer set when answers not loaded" do
        @magic_8ball.answers.should.equal(default_answer_set)
      end
    end
  end
end