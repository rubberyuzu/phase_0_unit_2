# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)Yuzu
# 2)Xander

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food) #creating a method with two variables
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #define a hash about numof ppl

   if ["pie","cake","cookie"].include?(fav_food) == false #if there's no fav_food
    raise ArgumentError.new("You can't make that food")
   else
    fav_food_qty = my_list[fav_food] #define a quantity of fav_food 
    if num_of_people % fav_food_qty == 0 
      num_of_food = num_of_people / fav_food_qty
      return "You need to make #{num_of_food} #{fav_food}(s)."
    else
    qty_array=[]
      my_list.each_key do |food|
       qty_array << num_of_people / my_list[food]
       num_of_people = num_of_people % my_list[food]
      end
    end
    return "You need to make #{qty_array[0]} pie(s), #{qty_array[1]} cake(s), and #{qty_array[2]} cookie(s)."
    end
end
 


#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 