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
    a.delete(a.max)
    a.delete(a.min)
    respuesta = respuesta + " " +a[0].to_s
    a = []
   end
  end
  return respuesta
end

puts "Start"

puts read_file("medianOfThree.txt")

puts "End"
