require_relative '../calculator'

RSpec.describe Calculator do
  ## described_class is basically which we're mentioning in Rspec.describe like in our case is Calculator.
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

    it "raises error for negative numbers" do
      expect {
        described_class.add("1,-2,-5")
      }.to raise_error("negative numbers not allowed -2,-5")
    end
  end
end
