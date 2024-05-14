#Task 1/2
module FactorialExt
  def factorial

  raise RuntimeError, "Runtime error: cannot count factorial for negative number" if self < 0
    
    result = (1..self).inject(1) { |product, i| product * i }
    puts result
  end
end

#Task 3
module InstanceModule
  def square 
    result = self * self
    puts result
  end
end

#Task 4
module ClassModule
  def sample(size)
    raise ArgumentError, "The number must be a zero or positive integer" unless size.is_a?(Integer) && size >= 0
    result = Array.new(size) { rand(21) }
    puts result
  end
  #Task 5
  alias :random :sample
end



class Integer
  include FactorialExt
  include InstanceModule
  extend ClassModule
end

puts "Task 1/2:"
5.factorial  # 120
#-1.factorial # Runtime error: cannot count factorial for negative number
puts ""


puts "Task 3:"
5.square  # 25
puts ""


puts "Task 4:"
Integer.sample(3)   # e.g. [5, 6, 1]
#Integer.sample(-1)  # ArgumentError: the number must be positive
puts ""


puts "Task 5:"
Integer.random(3)   # e.g. [3, 4, 3]
#Integer.random(-1)  # ArgumentError: the number must be positive
