#Puts
puts "Using Puts"
puts 1
puts "I am 6'10" "and this is the wrong way to do this put"
puts "I am 6'10\" and this tis the right way to do this"
puts "\nThis is a new line"

#Variables/Classes
puts "\nUsing Varibales and Classes"

class Dojo
	#Class Array
	@@num_id_count = 0

	def initialize(first_name, last_name, *left_overs)
		@first = first_name
		@last = last_name
		@container = left_overs
		@@num_id_count += 2
	end

	def display
		puts "First Name: %s" % @first
		puts "Last Name: %s" % @last
		puts "Contains Everything Else: %s" % @container.join(' ').to_s
		puts "The count is by 2 %d" % @@num_id_count		
	end
end

firstperson = Dojo.new("Ben", "Everard")
firstperson.display
secondperson = Dojo.new("Michael", "Choi", 1,23,100)
secondperson.display

#Operators and If Statements
#I have done some operaters in the other examples that I have sumitted.
#here is a few more though
puts "\nOperators and If Statements"
x=1
y=4
z=4

puts x+y
a=y/z
puts a*z

puts "#{x} is less then #{y}" if x<y
puts "#{x} is less then #{y} and #{z}" if x<y && x<z

#Loops
puts "\nUsing Loops"
puts "\nThis is a Unil Loop"
a = 0
b = 10
begin
	puts "A is #{a} and B is #{b} the loop will stop when they are equal "
	a += 1
	b -= 1
end until a > b

puts "\nThis is a While Loop using the same code. It only runs once since the statment is true" 
a = 0
b = 10
begin
	puts "A is #{a} and B is #{b} the loop will stop when they are equal "
	a += 1
	b -= 1
end while a > b
