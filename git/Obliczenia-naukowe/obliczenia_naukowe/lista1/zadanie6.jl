#author: Jan Sieradzki
#nr_indeksu: 236441

function kwadrat(x)
	return x*x
end

#funkcja f
function f(x)
	return sqrt(kwadrat(Float64(x))+1.0)-1.0
end

#funkcja g
function g(x)
	return kwadrat(Float64(x)) / (sqrt(kwadrat(Float64(x)) + 1.0) + 1.0)
end

#wyniki obu funkcji
function zad6()
	for i=1:13
		println("f(8^(-$i)) = ", f(8.0^(-i)))
		println("g(8^(-$i)) = ", g(8.0^(-i)))
	end
end

zad6()
