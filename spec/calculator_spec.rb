require_relative '../calculator'

RSpec.describe Calculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(described_class.add("")).to eq(0)
    end

    it "returns the number itself for a single number" do
      expect(described_class.add("5")).to eq(5)
    end
  end
end
