# frozen_string_literal: true

RSpec.describe EmojiClock do
  describe "#at" do
    context "when given a Time object" do
      it "returns the time" do
        time = Time.now
        expect(EmojiClock.at(time)).to eq(time)
      end
    end

    
  end
end
