def abbreviate_sentence(sent)
	part = sent.split(" ")
  	ans = []
  	part.each do |part| 
    	if part.length > 4
          word = abbreviate_word(part)
          ans << word
        else
          ans << part
        end
    end
  return ans.join(" ")
end

def abbreviate_word(part)
  vowels = "aeiou"
  new_word = ""
  part.each_char do |char|
    if !vowels.include?(char)
      new_word += char
    end
  end
  return new_word
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"