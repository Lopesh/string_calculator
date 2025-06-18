class Calculator
    def self.add(input)
      return 0 if input.empty?
      delimiters = /,|\n/
  
      numbers = input.split(delimiters).map(&:to_i)
      numbers.sum
    end
end  