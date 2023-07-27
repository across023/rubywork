# Anthony Cross/bruh/bruh
first="James"
last="Brown"
f=first.scan(/^./)
puts f
la=last.scan(/^../)
puts la
userid=f[0].downcase!+la[0].downcase
puts f
puts la
puts userid
puts f.type