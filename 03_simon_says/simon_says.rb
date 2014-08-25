def echo(word)
  "#{word}"  
end

def shout(word)
  "#{word}".upcase
end

def repeat(word, num = 2)
  #result = (word + " ") * num 
  #result.chop
  result = []
  (1..num).each do 
    result << word
  end
  return result.join(' ')
end

def start_of_word(word, num)
  word.split("")[0..num-1].join 
  # word.slice(0,num) 
end

def first_word(word)
  word.split(" ").first  
end

def titleize(title)
  excluded_words = %w(and on in over under the)
  words_array = title.split
  words_array.map do |word|
    word.capitalize! unless excluded_words.include?(word)
  end

  words_array.first.capitalize!
  words_array.join(" ")
end