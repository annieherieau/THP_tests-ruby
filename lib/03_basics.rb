# frozen_string_literal: true

# who is the biggest number
def who_is_bigger(a, b, c) # rubocop:todo Naming/MethodParameterName
  # return "nil detected" if a == nil || b == nil || c == nil
  # return "nil detected" if [a,b,c].compact.length < 3
  # return "a is bigger" if [a, b, c].max == a
  # return "b is bigger" if [a, b, c].max == b
  # return "c is bigger" if [a, b, c].max == c

  hash = { a: a, b: b, c: c }
  return "nil detected" if hash.compact.length < hash.length

  "#{hash.key(hash.values.max)} is bigger"
end

# crazy stuff on strings
def reverse_upcase_noLTA(string) # rubocop:todo Naming/MethodName
  string.reverse.upcase.delete("LTA")
end

# 42 finder
def array_42(array) # rubocop:todo Naming/VariableNumber
  array.find_index(42) ? true : false
end

# crazy stuff on arrays
def magic_array(array)
  # flatten - sorted - multi *2 - reject %3 - valeurs uniques
  array.flatten.sort.map{ |v| v * 2 }.reject{ |v| (v % 3).zero? }.uniq.sort
end
