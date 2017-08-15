#!/usr/bin/ruby

def read_file(filename)
  respuesta=" "
  File.foreach(filename).with_index do |line|
   line=line.split(" ")
   array_length= line.length
   if array_length > 1
     a = line[0].to_i

     b = line[1].to_i

     c = line[2].to_i

     if ((a + b) > c) and ((a + c) > b) and ((c + b) > a)
       respuesta = respuesta + "1" + " "
     else
       respuesta = respuesta + "0" + " "
     end
   end
  end
  return respuesta
end

puts "Start"

puts read_file("triangles.txt")

puts "End"
