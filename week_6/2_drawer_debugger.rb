# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer

   attr_reader :contents #you can call @contents.

   def initialize
     @contents = []
     @open = true
   end

   def open
     @open = true
   end

   def close
     @open = false
   end 

   def add_item(item)
     @contents << item #item undefined
   end

   def remove_item(item = @contents.pop) #pop is getting the last element of the array.
   	# I wonder if the method remove_item itself is taking a variable or not. Maybe no?
     @contents.delete(item)
     puts "#{item} removed successfully!"
   end

   def dump 
   	 if @contents.empty?
       puts "Your drawer is empty."
     else
       puts "Your drawer has something."
     end
   end

   def view_contents
     puts "The drawer contains:"
     @contents.each {|silverware| puts "- " + silverware.type }
   end
end

class Silverware
   attr_reader :type

   def initialize(type, clean = true)
     @type = type
     @clean = clean
   end

   def eat
     puts "eating with the #{type}"
     @clean = false
   end

	def clean_silverware
		@clean = true
	end
end




knife1 = Silverware.new("knife") # type = "knife", clean = true

silverware_drawer = Drawer.new 
silverware_drawer.add_item(knife1) # ok
silverware_drawer.add_item(Silverware.new("spoon")) #ok
silverware_drawer.add_item(Silverware.new("fork")) #ok
silverware_drawer.view_contents # knife, spoon, fork

silverware_drawer.remove_item #nil	
silverware_drawer.view_contents # knife, spoon
sharp_knife = Silverware.new("sharp_knife") 


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents # knife, spoon, sharp_knife

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat # earing with sharp_knife => false
removed_knife.clean_silverware #undefined method

silverware_drawer.view_contents #knife, spoon
silverware_drawer.dump #empty.
silverware_drawer.view_contents #What should this return? knife, spoon

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat #no method error.

#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Assertion Failed!" unless yield
end
chopsticks = Silverware.new("chopsticks")
assert{chopsticks.is_a? Silverware}
assert{Silverware.is_a? Class}


# 5. Reflection 
# I felt this challenge was bit difficult. 
# I think I still am not very used to using a command line and analyze the error message. 
# But it was great getting a bit familiar with it.
# Also I learned how to use "attr_reader", "attr_writer", and "attr_accessor".
# I hope I can use these myself soon and get used to them!