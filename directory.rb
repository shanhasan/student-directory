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
puts "The students of my cohort at Makers Academy"
puts "_ _ _ _ _ _ _ _ _  _ _"
students.each do |student|
	puts student
end

#finally, we print the total
puts "Overall, we have {student.length} great students"