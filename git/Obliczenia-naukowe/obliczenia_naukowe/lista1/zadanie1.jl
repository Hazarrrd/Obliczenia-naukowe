#author: Jan Sieradzki
#nr_indeksu: 236441

#część A, MACHEPS

function macheps16()
	x = Float16(1.0)
	y = Float16(1.0)
	while Float16(1.0) + y > 1.0
	    x = y
	    y = y / Float16(2.0)
	end
	return x
end
function macheps32()
	x = Float32(1.0)
	y = Float32(1.0)
	while Float32(1.0) + y > 1.0
	    x = y
	    y = y / Float32(2.0)
	end
	return x
end
function macheps64()
	x = Float64(1.0)
	y = Float64(1.0)
	while Float64(1.0) + y > 1.0
	    x = y
	    y = y / Float64(2.0)
	end
	return x
end

function zad1a()
	println("eps(Float16)=",eps(Float16),", moja funkcja macheps16=",macheps16())
	println("eps(Float32)=",eps(Float32),", moja funkcja macheps32=",macheps32())
	println("eps(Float64)=",eps(Float64),", moja funkcja macheps64=",macheps64())
end

#część B, ETA

function eta16() 	    
	x = Float16(1.0)
	while (x/Float16(2.0) > 0.0)
	    x = x/Float16(2.0)
	end
	return x
end
function eta32() 	    
	x = Float32(1.0)
	while (x/Float32(2.0) > 0.0)
	    x = x/Float32(2.0)
	end
	return x
end
function eta64() 	    
	x = Float64(1.0)
	while (x/Float64(2.0) > 0.0)
	    x = x/Float64(2.0)
	end
	return x
end

function zad1b()
	println("nextfloat(Float16(0.0))=",nextfloat(Float16(0.0)), ", moja funkcja eta16()=",eta16())
	println("nextfloat(Float32(0.0))=",nextfloat(Float32(0.0)), ", moja funkcja eta32()=",eta32())
	println("nextfloat(Float64(0.0))=",nextfloat(Float64(0.0)), ", moja funkcja eta64()=",eta64())
end

# część C, MAX

function max16()
	x = Float16(1.0) 	    
	while !isinf(x*Float16(2.0))
        	x = x * Float16(2.0)
	end
        i = eta16() 	    
	while isinf(x*(Float16(2.0)-i))
		i = i*Float16(2.0)
  	end
	return x*(Float16(2.0)-i)
end

function max32() 	    
	x = Float32(1.0) 	    
	while !isinf(x*Float32(2.0))
        	x = x * Float32(2.0)
    	end
        i = eta32() 	    
	while isinf(x*(Float32(2.0)-i))
		i = i*Float32(2.0)
  	end
	return x*(Float32(2.0)-i)
end

function max64() 	    
	x = Float64(1.0) 	    
	while !isinf(x*Float64(2.0))
        	x = x * Float64(2.0)
    	end
        i = eta64() 	    
	while isinf(x*(Float64(2.0)-i))
		i = i*Float64(2.0)
  	end
	return x*(Float64(2.0)-i)
end

function zad1c()
	println("realmax(Float16)=", realmax(Float16), ", moja funckja max16()=", max16())
	println("realmax(Float32)=", realmax(Float32), ", moja funckja max32()=", max32())
	println("realmax(Float64)=", realmax(Float64), ", moja funkcja max64()=", max64())
end

#wywołanie funkcji

zad1a()
zad1b()
zad1c()
