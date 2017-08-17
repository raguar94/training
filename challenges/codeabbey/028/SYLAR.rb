#!/usr/bin/ruby

def read_file(filename)
  respuesta=" "
  File.foreach(filename).with_index do |line|
   line=line.split(" ")
   array_length= line.length
   if array_length > 1
     a = line[0].to_i

     b = line[1].to_f

     c = (a / (b ** 2))


     if c < 18.5
       respuesta = respuesta + " " + "under"
     elsif c >= 18.5  and c < 25.0
       respuesta = respuesta + " " + "normal"
     elsif c >= 25.0  and c < 30.0
       respuesta = respuesta + " " + "over"
     elsif c >= 30.0
       respuesta = respuesta + " " + "obese"
     end
   end
  end
  return respuesta
end

puts "Start"

puts read_file("bodyMassIndex.txt")

puts "End"
