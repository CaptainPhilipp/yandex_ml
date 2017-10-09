VOWELS = 'aeoui'

def get_count(*words)
  words.flatten.join(' ').split(' ').inject({}){ |acc, word|
    acc["vowels"] ||= 0
    acc["consonants"] ||= 0
    acc["vowels"] += word.downcase.scan(/[aeoui]/).size
    acc["consonants"] += word.downcase.size - word.downcase.scan(/[aeoui]/).size
    acc
  }
end

puts 'Testing for leo, Aliquam fermentum, mauris, amet odio dolor eu', get_count('Testing for leo, Aliquam fermentum, mauris, amet odio dolor eu')