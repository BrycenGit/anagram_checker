#!/usr/bin/env ruby
require './lib/anagrams.rb'

puts '----------------------------'
puts 'Enter a word or phrase'
puts '----------------------------'
input = gets.chomp
puts '----------------------------'
puts 'Enter another word or phrase'
puts '----------------------------'
input2 = gets.chomp
anagram = Anagram.new(input, input2)

puts '----------------------------'
puts anagram.anagram_check
puts '----------------------------'

