=begin 
**********************************************************
*  Autor: Albano José Yanes Reyes
*  Fecha: 18/10/2013
*  Asignatura: Lenguejes y Paradigmas de Programación
*  Tercero de Grado en Ingeniería Informática
*  Universidad de la Laguna
***********************************************************
=end 
def gcd(u, v)
  u, v = u.abs, v.abs
  while v != 0 #  while v == 0 Este es el error debe  de ser distinto de cero
    u, v = v, u % v
  end
  u
end

