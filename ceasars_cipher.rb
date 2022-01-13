# > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"

# create hash of character codes
# or just 4 arrays of corresponding codes, letters

  def caesar_cipher(string, shift)
    chars = []
    caseArr = []
    # account for other characters, . , anything that isnt a letter
    string.each_char do |char|
      num = char.ord
      if num.between?(97, 122)
        chars.push(num - 97 + shift)
        caseArr.push('lower')
      elsif num.between?(65, 90)
        chars.push(num - 65 + shift)
        caseArr.push('upper')
      else 
        chars.push(char)
        caseArr.push('other')
      end
    end
    #use modulus to wrap character codes (if it goes over 26, a to z loop)
    
    chars.map! { |char| char.class == Integer ? char % 26 : char }
    # print caseArr
    # use caseArr to convert back to ascii
    caseArr.each_index do |idx|
      if caseArr[idx] == 'upper'
        chars[idx] += 65
      elsif caseArr[idx] == 'lower'
        chars[idx] += 97
      end
    end

    # print chars
    # join the array into a string
    chars.map! { |char| char.chr}.join
    
  end
  
puts caesar_cipher("What a string!", 5)
