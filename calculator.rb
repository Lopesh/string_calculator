require 'pry'

class Calculator
    def self.add(input)
      return 0 if input.empty?
      
      ## This will handle for delimiters like // etc.
      if input.match(/^\/\/(.+)\n/)
        delimiter_line, input = input.split("\n", 2)
        delimiter = Regexp.escape(delimiter_line[2])
        delimiters = /#{delimiter}|,|\n/
      else
        delimiters = /;|,|\n/
      end

      numbers = input.split(delimiters).map(&:to_i)
      numbers.sum
    end
end  