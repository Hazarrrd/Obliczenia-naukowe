#author: Jan Sieradzki
#nr_indeksu: 236441



#function that calculates difference quotients
# IN
# x - vector that have n+1 lenght, it contains nodes x0,...xn
# f - vector that have n+1 lenght, it contains values of interpolation functon in nodes f(x0),...f(xn)
# OUT
# fx - vector that have n+1 lenght, it contains calculated difference quotients
function diffQuotient(x :: Vector{Float64}, f :: Vector{Float64})
    n = length(f)             
    fx = f   
    x0=fx[1]
    for i = n : -1 : 2             
		for j = 1 : i-1
			fx[j] = (fx[j+1] - fx[j]) / (x[j+(n-i)+1] - x[j])
		end
		fx[i]=fx[1]
	end
    for i = 2: Int(floor(n/2))
	temp = fx[i]
	fx[i] = fx[n-i+2]
	fx[n-i+2] = temp
    end
    fx[1]=x0
    return fx
end


