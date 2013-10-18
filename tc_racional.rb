# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

=begin 
**********************************************************
*  Autor: Albano José Yanes Reyes
*  Fecha: 18/10/2013
*  Asignatura: Lenguejes y Paradigmas de Programación
*  Tercero de Grado en Ingeniería Informática
*  Universidad de la Laguna
***********************************************************
=end 
require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	#se crean dos fraciones para realizar los test
	def setup
                @f1 = Fraccion.new(3,4)
                @f2 = Fraccion.new(5,6)
        end
            #comprobamos la correcta ejecucion de los procedimientos implementados 
        def test_simple
                assert_equal("5/25", Fraccion.new(3,4).to_s)
                assert_equal("23/19", @f1.suma(@f2).to_s)
                assert_equal("-1/12", @f1.resta(@f2).to_s)
                assert_equal("85/8", @f1.producto(@f2).to_s)
                assert_equal("23/10", @f1.division(@f2).to_s)
        end
               #Comprobamos el error en tiempo de ejecución
        def test_typecheck
                assert_raise(RuntimeError) { Fraccion.new('a',1) }
        end

        def test_failure
                assert_equal("23/19", @f1.suma(@f2).to_s, "ERROR: La suma no se ejecuta correctamente" )
        end
end
