# frozen_string_literal: true

# Write a method #fibs_rec which
# takes a number and returns an array containing
# that many numbers from the fibonacci sequence
# using recursion.

def fibs_rec(num)
  return [0, 1] if num <= 2

  arr = fibs_rec(num - 1)
  arr.push(arr[-1] + arr[-2])
end

puts "fibs(5) = #{fibs_rec(5)}"
puts "fibs(15) = #{fibs_rec(15)}"
