#author: Jan Sieradzki
#nr_indeksu: 236441

function zad4a()
x = Float64(1.0)

while x*Float64(1/x) == 1.0
	x = nextfloat(Float64(x))
end
println("Taka liczba to x = ", x)
end

function zad4b()
x = - realmax(Float64)

while x*Float64(1/x) == 1.0
	x = nextfloat(Float64(x))
end
println("Taka liczba to x = ", x)
end

zad4a()
zad4b()
