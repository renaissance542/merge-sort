# frozen_string_literal:true

require_relative 'merge_sort'
require_relative 'classmates_solution'


arr = []
10000000.times do
  arr << rand(200)
end

def benchmark
  time = Time.now
  yield
  Time.now - time
end

puts 'My solution time:'
puts (benchmark { merge_sort(arr) })
puts "\n"
puts 'Classmate solution time:'
puts (benchmark { merge_sort2(arr) })

