# Implementar en este fichero la clase para crear objetos racionales
#! /usr/bin/ruby
require "./gcd.rb"

class Fraccion
	attr_reader :a , :b
	
	def initialize(a, b)
		if(b == 0)
			puts "ERROR: denominador no puede ser un 0"
		else
			@a, @b = a, b
			mcd = gcd(a, b)
			@a = a/mcd
			@b = b/mcd
		end
	end
	
	def to_s
		"#{@a} / #{@b}"
	end
	
	def suma(n, d)
		if(@b == d)
			ns = @a + n
			ds = @b
		else
			na = @a * d
			nb = @b * d
			nn = n * @b
			nd = d * @b
			ns = na + nn
			ds = nd
		end
			mcd = gcd(ns, ds)
			puts "El resultado de la suma es: #{ns/mcd} / #{ds/mcd}"
	end
	
	def resta(n, d)
		if(@b == d)
			nr = @a - n
			dr = @b
		else
			na = @a * d
			nb = @b * d
			nn = n * @b
			nd = d * @b
			nr = na - nn
			dr = nd
		end
			mcd = gcd(nr, dr)
			puts "El resultado de la resta es: #{nr/mcd} / #{dr/mcd}"
	end
	
	def producto(n, d)
		np = @a * n
		dp = @b * d
		
		mcd = gcd(np, dp)
		puts "El resultado del producto es: #{np/mcd} / #{dp/mcd}"		
	end
	
	def division(n, d)
		nd = @a * d
		dd = @b * n
		
		mcd = gcd(nd, dd)
		puts "El resultado de la division es: #{nd/mcd} / #{dd/mcd}"
	end
	
end

f1 = Fraccion.new(4, 2)
puts f1

f2 = f1.suma(4, 2)

f3 = f1.resta(4, 2)

f4 = f1.producto(4, 2)

f5 = f1.division(4, 2)

end
