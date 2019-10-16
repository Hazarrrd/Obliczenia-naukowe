#author: Jan Sieradzki
#nr_indeksu: 236441

include("interModule.jl")
using interModule

# Drawing plots of these function by algorithm from zadanie4.jl

f(x) = abs(x)
g(x) = 1.0 / (1.0 + x^2)

drawNnfx(f, -1.0, 1.0, 5) 
drawNnfx(f, -1.0, 1.0, 10)
drawNnfx(f, -1.0, 1.0, 15)
drawNnfx(g, -5.0, 5.0, 5)
drawNnfx(g, -5.0, 5.0, 10)
drawNnfx(g, -5.0, 5.0, 15)



