#author: Jan Sieradzki
#nr_indeksu: 236441

f(x) = sin(x) + cos(Float64(3.0)*x)
g(x) = cos(x) - Float64(3.0)*sin(Float64(3.0)*x)


function przyblizenie(h,x)
	 return (f(x+h)-f(x))/h
end

function blad(h,x)
    return abs(g(x) - przyblizenie(h,x))
end

function zad7()
	for i = 0 : 54
	    h = Float64(2)^Float64(-i)
		println("i=",i,"\t(1+h)= ",Float64(1.0)+h,"\t szacowanie ",przyblizenie(h,Float64(1.0)),"\t\t blad przyb. ",blad(h,Float64(1.0)),"")
	end
end

zad7()
