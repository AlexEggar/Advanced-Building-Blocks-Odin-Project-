
def cipher(phrase,shift)


base = "a".ord


phrase.split(//).map do |c|

when c "a".."z"
	(((c.ord - base) + shift) % 26 + base).chr
					end.join 

when c "A".."Z"
	base = "A".ord
	(((c.ord - base) + shift) % 26 + base).chr
					end.join 
else 
	puts c
end

cipher("hello",5)