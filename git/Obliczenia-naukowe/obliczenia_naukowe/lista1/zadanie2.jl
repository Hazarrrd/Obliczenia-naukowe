#author: Jan Sieradzki
#nr_indeksu: 236441

function zad2()
	x = Float16(3)*(Float16(4)/Float16(3) - Float16(1)) - Float16(1)
	println(typeof(x))
	println("Kahan macheps: ",x,", eps(Float16)=",eps(Float16))

	x = Float32(3)*(Float32(4)/Float32(3) - Float32(1)) - Float32(1)
	println(typeof(x))
	println("Kahan macheps: ",x,", eps(Float32)=",eps(typeof(x)))

	x = Float64(3)*(Float64(4)/Float64(3) - Float64(1)) - Float64(1)
	println(typeof(x))
	println("Kahan macheps: ",x,", eps(Float64)=",eps(typeof(x)))
end

zad2()
