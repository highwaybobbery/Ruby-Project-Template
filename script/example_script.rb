#!/usr/bin/env ruby
require_relative '../zeitwerk_loader'

puts 'Simple script using ExampleClass.foo.'
puts 'What is the answer?'
puts ExampleClass.new.foo
