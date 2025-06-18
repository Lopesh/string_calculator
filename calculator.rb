require 'pry'

class Calculator
    def self.add(input)
      return 0 if input.empty?
      
      ## This will handle for delimiters like // etc.
      delimiters =  if input.match(/^\/\/(.+)\n/)
                      delimiter_line, input = input.split("\n", 2)
                      /#{Regexp.escape(delimiter_line[2])}|,|\n/
                    else
                      /;|,|\n/
                    end

      numbers = input.split(delimiters).map(&:to_i)
      numbers.sum
    end
end  