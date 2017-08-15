#!/usr/bin/ruby

def read_file(filename)
  respuesta=" "
  File.foreach(filename).with_index do |line|
   line=line.split(" ")
   array_length= line.length
   if array_length > 1
     a = line[0]

     b = line[1]

     c = a.to_i + b.to_i
     respuesta = respuesta + " " + c.to_s
   end
  end
  return respuesta
end

puts "Start"

puts read_file("sumInLoop.txt")

puts "End"
