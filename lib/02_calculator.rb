# frozen_string_literal: true

def add(a, b) # rubocop:todo Naming/MethodParameterName
  a + b
end

def subtract(a, b) # rubocop:todo Naming/MethodParameterName
  a - b
end

def sum(array)
  array.sum
end

def multiply(a, b) # rubocop:todo Naming/MethodParameterName
  a * b
end

def power(n, pwr) # rubocop:todo Naming/MethodParameterName
  n**pwr
end

def fact(n) # rubocop:todo Naming/MethodParameterName
  # return 1 if n.zero?
  # return (1..n).map{|factor| factor}.reduce{|result, factor| result *= factor}
  # --
  # return (1..n).reduce(1, :*) # pour renvoyer 1 lorsque n=0
  # --
  (1..n).inject(1, :*) # pour renvoyer 1 lorsque n=0
end
