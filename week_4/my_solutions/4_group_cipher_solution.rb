# U2.W4: Cipher Challenge


# I worked on this challenge by myself.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # for each letter in coded_message
    found_match = false  #set false from the outset since found_match being false is an exception and hard to define. If this is true, it means that the letter was successfully decoded.
    cipher.each_key do |y| # seeing the each key element of the hash
      if x == y  # if the letter in the coded_message is the same as the key in the hash
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # breaking to avoid unecessary process below (elsifs)
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #checking if the letter is a symbol
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # [0,1,2,3,4,5,6,7,8,9]
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # if the letter was either a letter, symbols listed above, or the numbers
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #seeing if there's any number inside the sentence
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # DECODED SENTENCE!!!!
end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  alphabet=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  cipher = Hash.new
  for i in 0..25 do
   cipher[alphabet[i]]=alphabet[(i-4)%26]
  end
  input.each do |x| 
    found_match = false  
    cipher.each_key do |y| 
      if x == y  
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" 
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x)
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    decoded_sentence << x if !(found_match) 
  end
  decoded_sentence = decoded_sentence.join
  decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }   if decoded_sentence.match(/\d+/) 
  decoded_sentence 
end





# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms." 
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!" 
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") =="if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman." 
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")== "next stop: south korea, then japan, then the world!" 
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")=="can somebody just get me 100 bags of cool ranch doritos?"

# Reflection
# I had really much fun creating an algorithm for alphabet cipher. It was like Math in elementary school and I really enjoyed it.
# Also found_match method was insightful, though I am not sure I can come up with this myself.
# I think I have to be more familiar with hashes.
# I will go over some materials of ruby hashes this weekend.