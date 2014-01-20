# #Number Array
puts "Number Array"
x = [3,5,1,2,7,9,8,13,25,32]
puts x.inject(:+)
z = x.reject { |i| i < 10 }
puts z.to_s

# #Name Array
puts "\nName Array"
puts "These are the names all shuffled up and using the print command to get them to the screen"
a = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
a.shuffle.each{|x| print "#{x}\n"}
puts "\nThese are names of 5 or more characters"
puts a.reject{|x| x.length < 5}

# #Alphabet Array
puts "\nAlphabet Array"
c = ('a'..'z').to_a
b = c.shuffle

if b.first =~ /[aeiou]/
	puts "This letter can not be shown"
else
	puts "This is the first letter #{b.first}" 
end
puts "This is the last letter #{b.last}"

# #Random Number Array
puts "\nRandom Number Array"
t = []
10.times do |x|
	t.push(rand(55..100))
end
puts t.sort.to_s
puts t.min
puts t.max


#Random Character Generator 5 Charaters
puts "\nRandom 5 Charater Generator"
g=[]
for i in 0..4
g.push((65+rand(26)).chr)
end
puts g.join
#I do not think I am getting how to do it with the map function.
#any help on this one would be great. I have now done it two different ways.

#Random Character Generator 10 Strings
puts "\nRandom 10 5 Charater String Generator"
x=[]
new_x=[]
10.times do
	5.times do
		x.push(((65+rand(26)).chr))
	end
	if x.length == 5
		new_x.push(x.pop(5).join)
	end
end
puts new_x.to_s