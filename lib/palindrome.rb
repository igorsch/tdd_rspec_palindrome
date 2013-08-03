class Palindrome
  def self.palindrome?(string)
    string = string.to_s unless string.is_a?(String)
    string.downcase!
    string.gsub!(/\W/, '')
    if string.length < 2
      true
    else
      #string[0] == string[-1] && string[1] == string[-2]
      #characters[0] == characters[-1] &&
      #    characters[1] == characters[-2]
      characters = string.split('')
      first_character = characters.shift
      last_character = characters.pop
      rest_of_string = characters.join('')
      first_character == last_character &&
          palindrome?(rest_of_string)
    end
  end
end
