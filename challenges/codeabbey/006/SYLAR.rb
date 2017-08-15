#!/usr/bin/ruby

def read_file(filename)
  respuesta=" "
  File.foreach(filename).with_index do |line|
   line=line.split(" ")
   array_length= line.length
   if array_length > 1
     a = line[0].to_f

     b = line[1].to_f

     c = (a/b).round(2)
     c = c.round
    respuesta = respuesta + " " +c.to_s
   end
  end
  return respuesta
end

puts "Start"

puts read_file("rounding.txt")

puts "End"
