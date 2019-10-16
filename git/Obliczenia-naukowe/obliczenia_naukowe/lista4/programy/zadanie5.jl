#author: Jan Sieradzki
#nr_indeksu: 236441

include("interModule.jl")
using interModule

# Drawing plots of these function by algorithm from zadanie4.jl

f(x) = exp(x)
g(x) = x^2 * sin(x)

drawNnfx(f, 0.0, 1.0, 5)
drawNnfx(f, 0.0, 1.0, 10)
drawNnfx(f, 0.0, 1.0, 15)
drawNnfx(g, -1.0, 1.0 , 5)
drawNnfx(g, -1.0, 1.0 , 10)
drawNnfx(g, -1.0, 1.0 , 15)
