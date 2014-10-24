#first we print the list of students
students = [
{:name => "Shan Hasan", :cohort :november},
{:name => "Ben", :cohort :november},
{:name => "Graham",  :cohort:november},
{:name => "Stacy", :cohort :november},
{:name => "Monika", :cohort :november},
{:name => "Bob", :cohort :november},
{:name => "Jonty", :cohort :november},
{:name => "George", :cohort :november},
{:name => "Jack", :cohort :november},
]
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

#nothing happens till we call the methods
print_header
print(students)
print_footer(students)
