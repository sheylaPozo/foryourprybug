def morse_dict
  {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
end

def decode_char(char)
  morse_dict[char]
end

def decode_word(word)
  word.split.map { |letter| decode_chars(letter) }.join
end

def decode_msg(msg)
  words = msg.split('   ').map { |morse| decode_word(morse) }
  words.join(' ')
end

puts decode_msgs('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')