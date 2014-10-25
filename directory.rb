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
	puts "3. Save the list to students.csv"
	puts "4. Load the list from students.csv"
	puts "9. Exit" # 9 because we'll be adding more items
end

def show_students
	print_header
	print_students_list
	print_footer
end

def save_students
	# open the file for writing
	file = File.open("stuents.csv", "w")
	# iterate over the array of students
	@students.each do |students|
		students_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end

def add_student(name, cohort)
	@students << {:name => name, :cohort => cohort.to_sym}
end

def load_students(filename = "students.csv")
	file = File.open("filename", "r")
	file.readlines.each do |line|
		name, cohort = line.chomp.split(',')
		add_student(name, cohort)
	end
	file.close
end

def try_load_students
	filename = ARGV.first
	return if filename.nil?
	if File.exists?(filename)
		load_students(filename)
		puts "Loaded #{@students.length} from#{filename}"
	else
		puts "sorry, #{filename} doesn't exist"
		exit
	end
end

def process (selection)
	case selection
	when "1"
		input_students
	when "2"
		show_students
	when "3"
		save_students
	when"4"
		load_students
	when "9"
		exit
	else
		puts "i don't know what you mean, try again"
	end
end

def interacive_menu
	loop do
		print_menu
		process(STDIN.gets.chomp)
	end
end

try_load_students
interacive_menu