def oxford_comma(array)
  to_sentence(array)
end

def to_sentence(array)
  if array.length == 1
    return array[0]
  end

  sentence = Array.new
  0.upto(array.length - 2) { |i|
    sentence.push(array[i])
  }

  if array.length > 2
    sentence.push("and #{array[array.length-1]}")
    string = sentence.join(", ")
  else
    string = sentence[0]
    "#{string} and #{array[array.length-1]}"
  end
end
