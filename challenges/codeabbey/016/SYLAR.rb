#!/usr/bin/ruby

def avarage (numbers)
 return (numbers.inject{ |sum, el| sum + el }.to_f / (numbers.size - 1))
end

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

    respuesta = respuesta + " " + avarage(a).round.to_i.to_s
    a = []
   end
  end
  return respuesta
end

puts "Start"

puts read_file("average-of-array.txt")

puts "End"
