
#Pseudocode 
#create method called eassy writer
#method takes (title, person, date, thiese statement, male or femal)
#use sting interpolation to enter the new information


def essay_writer(title, person, date, thesis_statement, gender)

if gender == "female"
     pronoun_1 = "she"
     pronoun_2 = "her" 
else 
     pronoun_1 = "he"
     pronoun_2 = "his"
end  
 
"#{title}
  
 #{person.capitalize} was important in #{date}. #{pronoun_1.capitalize} were great because of #{pronoun_2} work. #{thesis_statement}." 
    
  end


---------------------------------------------------------------------
TDD:


temp = "#{title}
  
 #{person.capitalize} was important in #{date}. #{pronoun_1.capitalize} were great because of #{pronoun_2} work. #{thesis_statement}." 


 
 
 example_1 = "Anne Frank
  
 Anne was important in 1934. She were great because of her work. This is my thesis." 

 example_2 = "Catherline Lin
  
 Catherline was important in 1234. She were great because of her work. This is my thesis." 

 example_3 = "Mark Smith
  
 Mark was important in 1234. He were great because of his work. This is my thesis." 
  
essay_writer("Anne Frank", "Anne", 1934, "This is my thesis", "female") == example_1
essay_writer("Catherline Lin", "Catherline", 1234, "This is my thesis", "female") == example_2
essay_writer("Mark Smith", "Mark", 1234, "This is my thesis", "male") == example_3
