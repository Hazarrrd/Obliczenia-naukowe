#author: Jan Sieradzki
#nr_indeksu: 236441

function zad3()
	delta = Float64(2)^-52
	println("przedzial [1,2]\n")
	x = Float64(1)
	for i = 1 : 6
	    x += delta
	    println(x,"  ",bits(x))
	end

	println("przedzial [0.5,1]\n")
	x = Float64(0.5)
	for i = 1 : 6
	    x += delta
	    println(x,"  ",bits(x))
	end

	println("przedzial [2,4]\n")
	x = Float64(2.0)
	for i = 1 : 10
	    x += delta
	    println(x,"  ",bits(x))
	end
end

zad3()
