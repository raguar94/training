#!/usr/bin/ruby

def read_file(filename)
  respuesta=" "
  a = []
  File.foreach(filename).with_index do |line|
   line=line.split(" ")
   array_length= line.length
   if array_length > 1
     line.each { |x|
      a << x.to_i
    }
    respuesta = respuesta + " " +a.min.to_s
    a = []
   end
  end
  return respuesta
end

puts "Start"

puts read_file("minOfThree.txt")

puts "End"
