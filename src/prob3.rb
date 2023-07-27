# Anthony Cross;prob3.rb;Extracts 32 CS class titles
csfile=File.new('sp08cs','r')
cschart=csfile.read
classpatt=%r|HH   (.+?) |
classpatt2=%r|E    (.+?) |
HHclasses=cschart.scan(classpatt)
Eclasses=cschart.scan(classpatt2)
classes=Array.new
for cs in HHclasses
	classes << "CS-#{cs}"
end
for cs in Eclasses
	classes << "CS-#{cs}"
end
puts classes