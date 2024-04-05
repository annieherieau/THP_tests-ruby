# frozen_string_literal: true

def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, n = 0) # rubocop:todo Naming/MethodParameterName
  n.zero? ? n = 2 : n
  #  return (1..n).map{|i| str}.join(" ")
  Array.new(n, str).join(" ")
end

def start_of_word(str, num)
  # return "" if n.zero?
  # [0...n].map{|i|  str.chars[i]}.join
  str[0..num - 1] # range
end

def first_word(str)
  str.split.first
end

def titleize(str)
  return str.capitalize if str.split.count == 1

  arr = str.split.map{ |word| word.length > 3 ? word.capitalize! : word }
  arr.first.capitalize!
  arr.join(" ")
end
