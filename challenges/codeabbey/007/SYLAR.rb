#!/usr/bin/ruby

def read_file(filename)
  respuesta=" "
  File.foreach(filename).with_index do |line|
   line=line.split(" ")
   line.each { |x|
    celsius = x.to_i
    fahrenheit = (celsius.to_i - 32) /1.8
    respuesta = respuesta + " " +fahrenheit.round.to_s
   }
  end
  return respuesta
end

puts "Start"

puts read_file("FahrenheitToCelsius.txt")

puts "End"
