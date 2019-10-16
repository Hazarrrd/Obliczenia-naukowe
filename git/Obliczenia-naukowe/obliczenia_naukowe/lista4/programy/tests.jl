#author: Jan Sieradzki
#nr_indeksu: 236441


include("interModule.jl")
using interModule, Base.Test

#TEST ZAD4
f(x) = x^2

drawNnfx(f, -10.0, 10.0, 3)
drawNnfx(f, -10.0, 10.0, 20)

x = [-2.0, -1.0, 0.0, 1.0, 2.0, 3.0]
y = [-25.0, 3.0, 1.0, -1.0, 27.0, 235.0]

#TEST ZAD1
println("diffQuotient")
@test diffQuotient([-1.0, 0.0, 1.0, 2.0], [2.0,1.0,2.0,-7.0]) == [2.0, -1.0, 1.0, -2.0]
@test diffQuotient([0.0, 1.0, 2.0, -1.0, 3.0], [-1.0,-1.0,-1.0,-7.0, 5.0]) == [-1.0, 0.0, 0.0, 1.0, 0.0]
@test diffQuotient([-2.0, -1.0, 0.0, 1.0, 2.0, 3.0], [-25.0, 3.0, 1.0, -1.0, 27.0, 235.0]) == [-25.0, 28.0, -15.0, 5.0, 0.0, 1.0]


#TEST ZAD2
println("calculatepolynton")
@test calculatepolynton([-2.0, -1.0, 0.0, 1.0, 2.0, 3.0], [-25.0, 28.0, -15.0, 5.0, 0.0, 1.0],1.0) == -1.0
@test calculatepolynton([-2.0, -1.0, 0.0, 1.0, 2.0, 3.0], [-25.0, 28.0, -15.0, 5.0, 0.0, 1.0],2.0) == 27.0
@test calculatepolynton([0.0, 1.0, 2.0, -1.0, 3.0], [-1.0, 0.0, 0.0, 1.0, 0.0],2.0) == -1.0

#TEST ZAD3
println("naturalForm")
@test naturalForm([-2.0, -1.0, 0.0, 1.0, 2.0, 3.0], [-25.0, 28.0, -15.0, 5.0, 0.0, 1.0]) == [1.0,-3.0,0.0,0.0,0.0,1.0]
@test naturalForm([0.0, 1.0, 2.0, -1.0, 3.0], [-1.0, 0.0, 0.0, 1.0, 0.0]) == [-1.0, 2.0, -3.0, 1.0, 0.0]
@test naturalForm([-1.0, 0.0, 1.0, 2.0], [2.0, -1.0, 1.0, -2.0]) == [1.0, 2.0, 1.0, -2.0]
