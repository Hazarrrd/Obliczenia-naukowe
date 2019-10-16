#author: Jan Sieradzki
#nr_indeksu: 236441

# Tworzenie wektorów

x = [2.718281828, -3.141592654, 1.414213562, 0.5772156649, 0.3010299957]
y = [1486.2497, 878366.9879, -22.37492, 4773714.647, 0.000185049]


# a) "w przód"

function zad5a32()
    Sum = Float32(0.0)
    for i=1:5
        Sum=Float32(Sum+Float32(Float32(x[i])*Float32(y[i])))
    end
    return Sum
end
function zad5a64()
    Sum = Float64(0.0)
    for i=1:5
         Sum=Float64(Sum+Float64(Float64(x[i])*Float64(y[i])))
    end
    return Sum
end


# b) "w tył"

function zad5b32()
    Sum = Float32(0.0)
    for i=1:5
        Sum=Float32(Sum+Float32(Float32(x[6-i])*Float32(y[6-i])))
    end
    return Sum
end
function zad5b64()
    Sum = Float64(0.0)
    for i=1:5
        Sum=Float64(Sum+Float64(Float64(x[6-i])*Float64(y[6-i])))
    end
    return Sum
end

# Wyliczanie mnożeń

T1a = Float32(Float32(x[1]) * Float32(y[1]))
T2a = Float32(Float32(x[2]) * Float32(y[2]))
T3a = Float32(Float32(x[3]) * Float32(y[3]))
T4a = Float32(Float32(x[4]) * Float32(y[4]))
T5a = Float32(Float32(x[5]) * Float32(y[5]))
T1b = Float64(Float64(x[1]) * Float64(y[1]))
T2b = Float64(Float64(x[2]) * Float64(y[2]))
T3b = Float64(Float64(x[3]) * Float64(y[3]))
T4b = Float64(Float64(x[4]) * Float64(y[4]))
T5b = Float64(Float64(x[5]) * Float64(y[5]))

# Funkcja wypisująca wyniki mnożeń

function mnozenia32()
	println("Mnożenia - pojedyncza precyzja:")
        println("x[1]*y[1] = ",T1a)
        println("x[2]*y[2] = ",T2a)
	println("x[3]*y[3] = ",T3a)
	println("x[4]*y[4] = ",T4a)
	println("x[5]*y[5] = ",T5a)
end
function mnozenia64()
	println("Mnożenia - podwójna precyzja:")
        println("x[1]*y[1] = ",T1b)
        println("x[2]*y[2] = ",T2b)
	println("x[3]*y[3] = ",T3b)
	println("x[4]*y[4] = ",T4b)
	println("x[5]*y[5] = ",T5b)
end

# 4 > 1 > 5 > 0 > 3 > 2

# c) "od największego do najmniejszego"

function zad5c32()
	Sumaplus = Float32(Float32(T4a+T1a)+T5a)
	Sumaminus = Float32(T2a+T3a)
	Suma = Float32(Sumaplus+Sumaminus)	
    return Suma
end
function zad5c64()
	Sumaplus = Float32(Float32(T4b+T1b)+T5b)
	Sumaminus = Float32(T2b+T3b)
	Suma = Float32(Sumaplus+Sumaminus)	
    return Suma
end


# d) "od najmniejszego do największego"

function zad5d32()
	Sumaplus = Float32(Float32(T5a+T1a)+T4a)
	Sumaminus = Float32(T3a+T2a)
	Suma = Float32(Sumaplus+Sumaminus)	
    return Suma
end
function zad5d64()
	Sumaplus = Float32(Float32(T5b+T1b)+T4b)
	Sumaminus = Float32(T3b+T2b)
	Suma = Float32(Sumaplus+Sumaminus)	
    return Suma
end


#Rozwiązanie

function zad5()
	println("Dokładny wynik: Suma = -1.00657107000000e-11")
	println("Algorytm A: \n single: Suma = ", zad5a32())
	println(" double: Suma = ", zad5a64())
	println("Algorytm B: \n single: Suma = ", zad5b32())
	println(" double: Suma: S = ", zad5b64())
	println("Algorytm C: \n single: Suma = ", zad5c32())
	println(" double: Suma = ", zad5c64())
	println("Algorytm D: \n single: Suma = ", zad5d32())
	println(" double: Suma = ", zad5d64())
end

zad5()
