#!/usr/bin/ruby

def read_file(filename)
  respuesta=" "
  total = 0
  File.foreach(filename).with_index do |line|
   line=line.split(" ")
   array_length= line.length
   if array_length > 1
     a = line[0].to_i

     b = line[1].to_i

     c = line[2].to_i
     c.times do |i|
      total = total + (a + (b * i))
     end
     respuesta = respuesta + " " + total.to_s
     total = 0
   end
  end
  return respuesta
end

puts "Start"

puts read_file("ArithmeticProgression.txt")

puts "End"
