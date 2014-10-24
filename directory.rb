#Print the list of students
def print_header
puts "The students of my cohort at Makers Academy"
puts "_ _ _ _ _ _ _ _ _  _ _"
end

def print(students)
students.each do |student|
	puts "#{student[:name]} (#{student[:cohort]} cohort)"
end
end

#finally, we print the total
def print_footer(names)
puts "Overall, we have {student.length} great students"
end

#Add students to list
def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	#get the first name
	name = gets.chomp
	#While the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		student << {:name => name, :cohort => :november}
		puts "Now we have #{student.length} students"
		# get another name from teh user
		name =gets.chomp
	end
	#return the array of students
	students
end




def interactive_menu
	loop do
	# 1. print the menu and ask the user what to do
	puts "1. Input the students"
	puts "2. Show the students"
	puts "9. Exit"
	# 2. read the input and save it into a variable
	selection = gets.chomp
	# 3. do what the user has asked
	case selection
	when "1"
		# input the students
		students = input_students
	when "2"
		# show the students
		print_header
		print (students)
		print print_footer(students)
	when "9"
		exit # this will cause the program to terminate
	else
		puts "I don't know what you meant, try again"
	end
	# 4. repeat from step 1
    end

	end
end

interactive_menu
