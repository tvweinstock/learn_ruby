def translate(word)
  alpha = ('a'..'z').to_a
  vowels = %w(a e i o u)
  consonants = alpha - vowels
  if vowels.include?(word[0])
    return word + "ay"
  elsif consonants.include?(word[0]) && consonants.include?(word[1])
    return word.slice(1..2, word.size) + word[0] + "ay"
    # return word[2..-1] + word[0..1] + 'ay'    
  else
    return word.slice(1, word.size) + word[0] + "ay"
  end
end