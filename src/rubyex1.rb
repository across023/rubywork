# Anthony Cross;rubyex1.rb;Parses html from monmouth news again, getting the titles and links
newsfile=File.new('Archives _ Monmouth University.html','r')
newshtml=newsfile.read
titlepatt=%r|aria-label="Article (.+?)">|
titles=newshtml.scan(titlepatt)
linkpatt=%r|<a href="(.+?)" title="|
links=newshtml.scan(linkpatt)
puts titles
puts links