#!/usr/bin/env ruby
require_relative '../zeitwerk_loader'

# Simple benchmnark
puts 'Benchmarking EC.new.foo'
puts(Benchmark.measure { ExampleClass.new.foo })

subject = ExampleClass.new
n = 100
# Comparative benchmark with labels (number is width of label)
Benchmark.bm(13) do |x|
  x.report('new foo:') { n.times { ExampleClass.new.foo } }
  x.report('foo existing:') { n.times { subject.foo } }
end
