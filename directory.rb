#first we print the list of students
students = [
"Shan Hasan"
"Ben"
"Graham"
"Stacy"
"Monika"
"Bob"
"Jonty"
"George"
"Jack"
]
#Print the list of students
def print_header
puts "The students of my cohort at Makers Academy"
puts "_ _ _ _ _ _ _ _ _  _ _"
end

def print(names)
students.each do |student|
	puts student
end

#finally, we print the total
def print_footer(names)
puts "Overall, we have {student.length} great students"
end

#nothing happens till we call the methods
print_header
print(students)
print_footer(students)
