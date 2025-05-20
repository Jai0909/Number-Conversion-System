# coderunner.rb
require_relative 'ncs' # Load the ncs.rb file

puts "ENTER TEXT TO BE CONVERTED: "
s = gets.chomp.upcase

puts "ENTER BASE TO BE CONVERTED FROM: "
a = gets.chomp.to_i

puts "ENTER BASE TO BE CONVERTED TO: "
b = gets.chomp.to_i

BaseConverter.convert_base(s, a, b)
