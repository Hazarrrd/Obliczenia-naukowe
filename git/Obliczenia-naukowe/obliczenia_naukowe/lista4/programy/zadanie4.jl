#author: Jan Sieradzki
#nr_indeksu: 236441


#function that draws polynomial and interpolation functions
# IN
# f - given function f(x); 
#a, b - bounds of interpolation; 
#n - degree of polynomial
# OUT
# function draws interpolation polynomial and interpolation function in bounds [a,b]
function drawNnfx(f, a :: Float64, b :: Float64, n :: Int)
    plotImprover = 25

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
