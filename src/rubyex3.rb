# Anthony Cross;rubyex3.rb;Create a roster class holding an array of the student class
class Student
	def initialize(first,last,email)
		@first=first
		@last=last
		@email=email
	end
	def show
		puts "#{@first} #{@last} #{@email}"
	end
end
class Roster
	def initialize
		@students=Array.new
	end
	def addstud(newstud)
		@students << newstud
	end
	def show
		@students.each do |stud|
			stud.show
		end
	end
end
rosterfile=File.new('roster.txt','r')
roster=Roster.new
rosterfile.each do |stud|
	creds=stud.split(", ")
	first=creds[1]
	last=creds[0]
	email=creds[2]
	roster.addstud(Student.new(first,last,email))
end
roster.show
