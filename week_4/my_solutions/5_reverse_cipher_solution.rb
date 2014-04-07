# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a #making an alphabet array
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] #making a hash of alphabet and cipher
    spaces = ["@", "#", "$", "%", "^", "&", "*"] #defining an array of special characters
    
    original_sentence = sentence.downcase #make everything downcase
    encoded_sentence = [] # make an empty array to put an output
    original_sentence.each_char do |element| #looking through each character using a loop
      if cipher.include?(element) #see if the element is a character or not
        encoded_sentence << cipher[element] #putting the element into the array
      elsif element == ' '
        encoded_sentence << spaces.sample#putting the element into the array
      else 
        encoded_sentence << element#putting the element into the array
      end
     end
    
    return encoded_sentence.join #puttting the array into the sentence by joining each element
end


# Questions:
# 1. What is the .to_a method doing? == putting elements into an array
# 2. How does the rotate method work? What does it work on? == It works on the array. By using rotate, you can look at the element which is 4 elements later.
# 3. What is `each_char` doing? == looking at each character
# 4. What does `sample` do? == getting a random element from an array
# 5. Are there any other methods you want to understand better? ==  zip method!
# 6. Does this code look better or worse than your refactored solution == I feel this code is much better than mine. I could have made the alphabet array like this.
#    of the original cipher code? What's better? What's worse?
# 7. Is this good code? What makes it good? What makes it bad? I think this code is good as in it's very simple and easy to read.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? == No, every time it returns a different cipher. 
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
# I learned a lot of new methods in this challenge, which helps me understand Ruby better.
# I  especially alphabet=("a".."z").to_a was awesome.
