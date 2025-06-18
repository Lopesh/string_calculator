require_relative '../calculator'

RSpec.describe Calculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(described_class.add("")).to eq(0)
    end
  end
end
