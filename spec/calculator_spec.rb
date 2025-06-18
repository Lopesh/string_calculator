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

    it "supports newlines between numbers" do
      expect(described_class.add("1\n2,3")).to eq(6)
    end

    it "supports custom delimiter like //;\n1;2" do
      expect(described_class.add("//;\n1;2")).to eq(3)
    end
  end
end
