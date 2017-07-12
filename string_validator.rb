# A string of characters like "({12}[34(56){67}])" is said to be well-formed if every opening brace (square, curly, or parens) has a matching close AND the closing brace comes in the opposite order of the opening.
#
# Valid: "({12}[34(56){67}])"
# Invalid "({12)"
# Invalid "({12)}"
# Write a validator that can determine the well-formed-ness of an input string.

class StringValidator

  def validate(string)
    stack = []
    string.chars.each do |element|
      if element == "("
        stack.push(")")
        next
      elsif element == "["
        stack.push("]")
        next
      elsif element == "{"
        stack.push("}")
        next
      end

      if element == stack.last
        stack.pop
      else
        stack.push(element)
      end

    end

    if stack.empty?
      puts "true"
    else
      puts "false"
    end

  end
end
v = StringValidator.new
v.validate("()")
# => true
v.validate("([{}[]])")
# => true
v.validate("()[")
# => false
v.validate("([)]")
# => false
