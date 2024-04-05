# frozen_string_literal: true

def translate(str)
  trans = []

  str.split.each do |word|
    # commence par consonne
    (0...3).each do |_i|
      nb = 1
      break unless /["aeiou"]/.match(word[0]).nil?

      # nombre de caractères à déplacer : si consonne = q prendre le u
      nb = 2 if word[0..1].downcase == 'qu'

      out = word.slice(0, nb)
      word = word[nb...word.length] + out
    end

    trans.push("#{word}ay")
  end

  trans.join(" ")
end

str = "eat pie banana cherry three quiet qaeoi"
puts translate(str)
