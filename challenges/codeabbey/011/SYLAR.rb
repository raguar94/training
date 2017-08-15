#!/usr/bin/ruby

def digit_sum(n)
  return n.to_s.each_char.map {|c| c.to_i }.reduce(:+)
end

def read_file(filename)
  respuesta=" "
  File.foreach(filename).with_index do |line|
    line=line.split(" ")
   array_length= line.length
   if array_length > 1
     a = line[0].to_i

     b = line[1].to_i

     c = line[2].to_i

     d = a *b + c
     respuesta = respuesta + " " + digit_sum(d).to_s
   end
  end
  return respuesta
end

puts "Start"

puts read_file("SumOfDigits.txt")

puts "End"
