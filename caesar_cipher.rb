def solve_cipher(input,shift)
  letters = input.split ("")
  newblock = []
  letters.each do |letter|
    #capitals
    if letter.ord.between?(65,90)
      if letter.ord >= (90 - shift + 1)
        newblock << (letter.ord - 26 + shift).chr
      elsif letter.ord <= (65 + shift - 1)
        newblock << (letter.ord + 26 - shift).chr
      else 
        newblock << (letter.ord + shift).chr
      end
    #low case
    elsif letter.ord.between?(97,122)
      if letter.ord >= (122 - shift + 1)
        newblock << (letter.ord - 26 + shift).chr
      elsif letter.ord <= (97 + shift - 1)
        newblock << (letter.ord + 26 - shift).chr
      else
        newblock << (letter.ord + shift).chr
      end
    #spaces
    else
      newblock << letter
    end
  end
  print newblock.join("")
end

solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)