def get_sum(string)
  arr = []
  new_number = ''

  string.chars.each do |char|
    if ('0'..'9').include?(char)
      new_number += char
    else
      arr << new_number.to_i
      new_number = ''
    end
  end
  arr << new_number.to_i
  arr.sum
end  

p get_sum('1sdf2sd3') == 6
