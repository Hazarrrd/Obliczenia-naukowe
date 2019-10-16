#author: Jan Sieradzki
#nr_indeksu: 236441


module interModule
export diffQuotient, calculatepolynton, naturalForm, drawNnfx
using Plots
plotly()


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
    for i = 2: Int(ceil(n/2))
	temp = fx[i]
	fx[i] = fx[n-i+2]
	fx[n-i+2] = temp
    end
    fx[1]=x0
    return fx
end

#function that calculates value of polynomial interpolation in polynton form by Horner algorithm.
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



#function that draws polynomial and interpolation functions
# IN
# f - given function f(x); 
#a, b - bounds of interpolation; 
#n - degree of polynomial
# OUT
# function draws interpolation polynomial and interpolation function in bounds [a,b]
function drawNnfx(f, a :: Float64, b :: Float64, n :: Int)
    plotImprover = 22

    x = Vector{Float64}(n+1)        
    y = Vector{Float64}(n+1)       
    fx = Vector{Float64}(n+1)       
    plot_y = Vector{Float64}(plotImprover*(n + 1))      
    plot_x = Vector{Float64}(plotImprover*(n + 1))      
    plot_polyn = Vector{Float64}(plotImprover*(n + 1))     

    kh = 0.0                                    
    limit = n + 1                               
    h = (b-a)/n                                 

    for i = 1: limit
        x[i] = a + kh
        y[i] = f(x[i])
        kh += h
    end

    fx = diffQuotient(x, y);
    kh = 0.0
    limit *= plotImprover
    h = (b - a)/(limit-1)

    for i = 1: limit
        plot_x[i] = a + kh
        plot_polyn[i] = calculatepolynton(x, fx, plot_x[i])
        plot_y[i] = f(plot_x[i])
        kh += h
    end

    lab = Array{String}(1, 3)
    lab[1] = "f(x)"
    lab[2] = "w(x)"
    plt = plot(plot_x, [plot_y, plot_polyn], label = lab)
    display(plt)
end
end

