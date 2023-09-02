# frozen_string_literal: true

RSpec.describe "EmojiClock" do

  describe "#at" do
    context "when given a time" do
      it "returns the correct emoji for 12:00" do
        time = Time.new(2020, 1, 1, 0, 0, 0)
        expect(EmojiClock.at(time)).to eq("🕛")
      end

      it "returns the correct emoji for 12:30" do
        time = Time.new(2020, 1, 1, 0, 30, 0)
        expect(EmojiClock.at(time)).to eq("🕧")
      end

      it "returns the 12:30 emoji for 12:29" do
        time = Time.new(2020, 1, 1, 0, 31, 0)
        expect(EmojiClock.at(time)).to eq("🕧")
      end

      it "returns the 12:30 emoji for 12:31" do
        time = Time.new(2020, 1, 1, 0, 31, 0)
        expect(EmojiClock.at(time)).to eq("🕧")
      end

      it "returns the 12:30 emoji for 12:44" do
        time = Time.new(2020, 1, 1, 0, 44, 0)
        expect(EmojiClock.at(time)).to eq("🕧")
      end

      it "returns the 13:00 emoji for 12:45" do
        time = Time.new(2020, 1, 1, 0, 50, 0)
        expect(EmojiClock.at(time)).to eq("🕐")
      end

      it "returns nil when exact is true and the time is not on the hour or half hour" do
        time = Time.new(2020, 1, 1, 0, 1, 16)
        expect(EmojiClock.at(time, exact: true)).to be_nil
      end
    end

    context "when given an integer" do
      it "returns the correct emoji clock" do
        expect(EmojiClock.at(Time.new(2020, 1, 1, 0, 0, 0).to_i)).to eq("🕛")
      end
    end

    context "when given a string" do
      it "returns the correct emoji clock" do
        expect(EmojiClock.at("2023-02-01 12:00")).to eq("🕛")
      end
    end
  end
end
