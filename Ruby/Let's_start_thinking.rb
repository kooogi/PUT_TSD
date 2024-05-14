#Task 1
def min_max(arr)
  min_sum = arr.sum - arr.max
  max_sum = arr.sum - arr.min
  puts "#{min_sum} #{max_sum}"
end

#Task 2
def decimal(binary_string)
  raise ArgumentError, "This is not a binary number" unless binary_string =~ /\A[01]+\z/

  decimal = binary_string.reverse.chars.each_with_index.inject(0) do |decimal, (digit, index)| decimal + digit.to_i * 2**index
  end

  puts decimal
end

#Task 3
def count_words(phrase)
  word_counts = Hash.new(0)
  phrase.split.each do |word|
    word_counts[word.downcase] += 1
  end
  puts word_counts
end


#Task 4
def pangram?(sentence)
  alphabet = ('a'..'z').to_a
  result = sentence.downcase.chars.uniq.sort.select { |c| c =~ /[a-z]/ } == alphabet
  puts result
end



puts "Task 1:"
min_max([1, 2, 3, 4, 5])  # 10 14
min_max([2, 8, 3, 5, 1])  # 11 18
puts ""


puts "Task 2:"
decimal("101")  # 5
#decimal("231")  # ArgumentError: this is not a binary number
puts ""


puts "Task 3:"
word_counts = count_words("olly olly come here free")
# Outputs: {:olly=>2, :come=>1, :here=>1, :free=>1}

puts ""


puts "Task 4:"
pangram?("The quick brown fox jumps over the lazy dog.")  # true
pangram?("abde")                                          # false
