# Defines a Student

class Student
   def initialize( first, last, id )
      @first = first
      @last  = last
      @email = id 
   end

   def show
      puts "#{@first}  #{@last}  #{@email}"
   end
   def userid
      if @last.scan(/ /)
	    newlast=@last.gsub(' ','')
		return @first.downcase+newlast.downcase
	  end
	  return @first.downcase+@last.downcase
   end
end
anthony=Student.new("Anthony","Cross","s1239598")
anthony.show
puts anthony.userid