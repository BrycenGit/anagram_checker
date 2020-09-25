#!/usr/bin/env ruby
require './lib/anagrams.rb'

puts '----------------------------'
puts 'Enter a word or phrase'
input = gets.chomp
puts '----------------------------'
puts 'Enter another word or phrase'
input2 = gets.chomp
puts '----------------------------'
anagram = Anagram.new(input, input2)
puts anagram.anagram_check


