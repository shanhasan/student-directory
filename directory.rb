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


#nothing happens till we call the methods
students = input_students
print_header
print(students)
print_footer(students)
