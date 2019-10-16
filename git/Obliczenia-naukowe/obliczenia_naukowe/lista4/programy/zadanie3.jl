#author: Jan Sieradzki
#nr_indeksu: 236441

#function that finds out natural factors
# IN
# x - vector that have n+1 lenght, it contains nodes x0,...xn
# fx - vector that have n+1 lenght, it contains values of difference quotients.
# OUT
# a - vector that have n+1 lenght, it contains natural factors
function naturalForm(x :: Vector{Float64}, fx :: Vector{Float64})
    n = length(fx)                 
    a = Vector{Float64}(n)        
    a[n] = fx[n]                   
    for k = n-1 : -1 : 1         
        a[k] = fx[k]		   
        for i = k : n-1             
            a[i] = a[i]-x[k]*a[i+1]
        end
    end
    return a
end



