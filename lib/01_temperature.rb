# frozen_string_literal: true

# farenheit
def ftoc(f) # rubocop:todo Naming/MethodParameterName
  (f - 32) * 5 / 9
end

def ctof(c) # rubocop:todo Naming/MethodParameterName
  (c * 1.8) + 32
end
