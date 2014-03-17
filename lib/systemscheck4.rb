require 'pry'
require_relative'WordAnalysis.rb'

strings = []
puts "Enter a paragraph: "
strings = gets.chomp

paragraph = WordAnalysis.new(strings)

puts paragraph.num_word
puts paragraph.num_letter
puts paragraph.num_symbol
puts paragraph.top_three_words
puts paragraph.top_three_letters
# binding.pry
# .each {|key, value| puts "#{key} appears #{value} time(s)"}
# puts paragraph.num_letter
