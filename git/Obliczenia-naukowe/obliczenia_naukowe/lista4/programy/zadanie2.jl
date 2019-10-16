#author: Jan Sieradzki
#nr_indeksu: 236441



#function that calculates value of polynomial interpolation in Newton form by Horner algorithm.
# IN
# x - vector that have n+1 lenght, it contains nodes x0,...xn
# fx - vector that have n+1 lenght, it contains values of difference quotients.
# t - point, where we should calculate polynomial
# OUT
# nt - value of polynomil in point t
function calculatepolynton(x :: Vector{Float64}, fx :: Vector{Float64}, t :: Float64)          
    n = length(fx)      
    nt = fx[n]
    for i = n-1 : -1 : 1
	nt = fx[i]+(t-x[i])*nt
    end
    return nt
end


