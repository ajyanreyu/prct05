# Implementar en este fichero la clase para crear objetos racionales
=begin 
**********************************************************
*  Autor: Albano José Yanes Reyes
*  Fecha: 18/10/2013
*  Asignatura: Lenguejes y Paradigmas de Programación
*  Tercero de Grado en Ingeniería Informática
*  Universidad de la Laguna
***********************************************************
=end 

#! /usr/bin/ruby
require "./gcd.rb"
class Fraccion
        attr_reader :a, :b
        
        def initialize(a, b)
        	#comprobamos que los datos de entrada sean numeros
                raise unless a.is_a?(Numeric)
                raise unless b.is_a?(Numeric)
                #chequea que el denominador  no sea cero
                raise unless (b != 0)
                
                k = gcd(a, b)
                a /= k
                b /= k
                @a, @b = a, b
        end
        # devuelve una cadena con la representación del racional
        def to_s
                "#{@a}/#{@b}"
        end
        # devuelve un nuevo racional que suma al objeto que invoca el que le pasan como parámetro
        def suma (num)
                maxcomun = @b * num.b
                a1 = @a * num.b
                a2 = num.a * @b
                a3 = a1 + a2
                k = gcd(a3, maxcomun)
                a3 /= k
                maxcomun /= k
                Fraccion.new(a3, maxcomun)
        end
        # devuelve un nuevo racional que resta al objeto que invoca el que le pasan como parámetro
        def resta (num)
                maxcomun = @b * num.b
                a1 = @a * num.b
                a2 = num.a * @b
                a3 = a1 - a2
                k = gcd(a3, maxcomun)
                a3 /= k
                comun /= k
                Fraccion.new(a3, maxcomun)
        end
        # devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
        def producto (num)
                a = @a * num.a
                b = @b * num.b
                k = gcd(a, b)
                a /= k
                b /= k
                Fraccion.new(a, b)
        end
        # devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
        def division (num)
                a = @a * num.b
                b = @b * num.a
                k = gcd(a, b)
                a /= k
                b /= k
                Fraccion.new(a, b)
        end
        
end
