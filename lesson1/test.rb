def string_lengths(sentence)
  strings = sentence.split

  p strings.map { |chars| chars.length }
end

string_lengths('to be or not to be')
  