@students = []

#Print the list of students
def print_header
puts "The students of my cohort at Makers Academy"
puts "_ _ _ _ _ _ _ _ _  _ _"
end

def print_students_list
@students.each do |student|
	puts "#{student[:name]} (#{student[:cohort]} cohort)"
end
end

#finally, we print the total
def print_footer(names)
puts "Overall, we have {@student.length} great students"
end

#Add students to list
def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	name = gets.chomp
	#While the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		@student << {:name => name, :cohort => :november}
		puts "Now we have #{@student.length} students"
		# get another name from teh user
		name = gets.chomp
	end
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "9. Exit" # 9 because we'll be adding more items
end

def show_students
	print_header
	print_students_list
	print_footer
end


def process (selection)
	case selection
	when "1"
		input_students
	when "2"
		show_students
	when "9"
		exit
	else
		puts "i don't know what you mean, try again"
	end
end

def interacive_menu
	loop do
		print_menu
		process(gets.chomp)
	end
end

interactive_menu
