# > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"

  def ceasar_cipher(string, shift)
    chars = []
    caseArr = []
    
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
    
    chars.map! { |char| char.class == Integer ? char % 26 : char }
    caseArr.each_index do |idx|
      if caseArr[idx] == 'upper'
        chars[idx] += 65
      elsif caseArr[idx] == 'lower'
        chars[idx] += 97
      end
    end
    chars.map! { |char| char.chr}.join  
  end

  
  
