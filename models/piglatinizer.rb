class PigLatinizer

  def piglatinize(word)
    return word.split("").rotate.join + "ay" if word.index(/[aeiouAEIOU]/) == 1
    return word.split("").join + "way" if word.index(/[aeiouAEIOU]/) == 0
    word.split("").rotate(word.index(/[aeiouAEIOU]/)).join + "ay"
  end

  def to_pig_latin(string)
    words = string.split
    words.collect {|word| piglatinize(word)}.join(" ")
  end
end
