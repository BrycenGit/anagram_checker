#!/usr/bin/env ruby
require './lib/anagrams.rb'

puts '----------------------------'
sleep 1
puts 'Enter a word or phrase'
input = gets.chomp
puts '----------------------------'
sleep 0.5
puts 'Enter another word or phrase'
input2 = gets.chomp
puts '----------------------------'
sleep 1
anagram = Anagram.new(input, input2)
puts anagram.anagram_check
sleep 2
puts "You Win!"
sleep 1.5
puts "just kidding, g00d job though"
sleep 2
puts "by3 :D"


