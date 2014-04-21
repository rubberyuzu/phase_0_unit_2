def find(string, part)
   part_a=part.split("").to_a
   string_a=string.split("")
   torf = false
   while string_a.length > 0
     if string_a.each_slice(part.length).to_a.include?(part_a)
     	torf = true
     	break
     else
     	string_a = string_a.shift
     end
   end
   return torf
end


def find(string, part)
   part_a=part.split("").to_a
   string_a=string.split("")
   torf = false
   while string_a.length > 0
     if string_a.each_slice(part.length).to_a.include?(part_a) then torf = true
      break
     else　string_a = string_a.shift
     end
   end
   torf
end

def reverse(string)
   result = []
   array = string.split("").to_a
   for i in 0..string.length-1
     result << array[string.length-i-1] 
   end
   result.join("")
end

def reverse(string)
	result = nil
	if string.length==1
		result = string
	else
		array = string.split("").to_a
		array.shift
        result = reverse(array.join(""))+string.split("").to_a.first   
    end
    result
end

def firstoccur(string, part)

	string_a=string.split("")
  while string_a.length >0
	i=0 #counter
	string_a.each_slice(part.length).to_a.each do |x|
		if x==part
            find? = true
			break
		else
			i+=1 #counter for the position of x
		end
	 if find? =true
		break
	 else
		string_a.shift
	 end
   end
end

	end

end


stuff = [:dog, :cat, :orange, :banana]
array_n = Array.new
array_n << stuff[1]
array_n << stuff[2]
array_n << :apple
array_n.pop
array_n.unshift(:fish)
array_n.shift
array_n


prime = [2]
p = true
(3..100).each do |x|
  #if x is not divisible by any of prime elements so far
  (2..x-1).each{|i|
  	if x%i == 0
  		p = false

  	end
  	}
  if p == true
  	prime << x
  end
end
puts prime.shift(1)

prime = [2]
p = true
# unless x%i == 0 then false

#define a method which tells you true or false about Prime

def prime?(n)
   if n<1
   	 return false
   elsif n==1
   	 return true
   else
      for i in 2..n-1
        if n%i ==0
        	return false
        	break
        end
        unless false then true
      end
   end
   	
end
end

array = [1, 1, 2]
i = 3
while array[i-1]+array[i-2]<= 4000000
 array[i] = array[i-1]+array[i-2]
 i+=1
end
array.shift
sum = 0
array.each do |x|
	if x%2 == 0
		sum += x
	end
end
sum



# prob 3
def largest_prime(num)
	pfac=[]
	i = 2
	while i < num
		if num % i ==0
			pfac << i
		end
	 i += 1
	end
	puts pfac.last
end




# prob 4
# (900..999).each do |i|
# 	(900..999).each do |x|
# 		if	i*x.to_s.split("").reverse == i*x.to_s.split("")
# 			array << i*x
# 		end
# 	end
# end

array = []
(10000..998001).each do |i|
	if i.to_s.split("") == i.to_s.split("").reverse
		array << i
	end
end



arr = []
until arr.size == 100
	arr.push ramd(1..500)
	arr.uniq!
end

arr.sort!

def binary_search(arr, target, head=0, tail=arr.size-1)
	center = (head+tail)/2
	if center == head
		p "Not Found"
	end

	if arr[center] == target
		p "あった！"
	elsif arr[center] < target
		binary_search(arr, target, cenetr, tail)
	elsif arr[center] > target
		binary_search(arr, target, head, center)
	end
end

def multi(num)
	arr = []
	(1..num).each do |i|
		arr << i
	end

for i in 1..num
p arr.map{|x| x*i}
end
end

def prime(num)
	i = 2
	arr = []
	while i <= num
		if num % i ==0
			arr << i
		end
		i+=1
	end
	return arr
end






# make a hash 2 => 3, 

def prime?(n)
	dou?=true
	(2..n-1).each{|i| 
		if n%i==0
		 false
		end}
	dou?
end













