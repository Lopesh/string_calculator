require_relative '../calculator'

RSpec.describe Calculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(described_class.add("")).to eq(0)
    end

    it "returns the number itself for a single number" do
      expect(described_class.add("5")).to eq(5)
    end

    it "returns sum of two numbers" do
      expect(described_class.add("1,2")).to eq(3)
    end

    it "returns sum of multiple numbers" do
      expect(described_class.add("1,2,3,4")).to eq(10)
    end
  end
end
