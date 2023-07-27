# Anthony Cross;rubyex2.rb;Creates the fortune class
class Fortune
	attr_accessor :content
	def word_count
		numwords=@content.scan(/\w+/).size
		puts numwords
	end
end
phrase=Fortune.new
phrase.content=("Why must standard input not be a string?")
phrase.word_count