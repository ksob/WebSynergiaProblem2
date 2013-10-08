#encoding: UTF-8
#!/usr/bin/env ruby

require File.dirname(__FILE__) + '/get_difference.rb'

ARGV.each_with_index do |a, i|
  puts "Zdanie #{i+1}: #{a}"
end

puts "Różnica wynosi: " + GetDifference.get_difference(ARGV[0], ARGV[1]).to_s


