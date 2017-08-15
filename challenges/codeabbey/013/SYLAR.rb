#!/usr/bin/ruby

def read_file(filename)
  respuesta=" "
  total = 0
  File.foreach(filename).with_index do |line|
   line=line.split(" ")
   array_length= line.length
   if array_length > 1
     line.each { |num|
      temp = num.chars
       temp.each_with_index { |val, index|
        total = total + (val.to_i * (index + 1))
       }
       respuesta = respuesta + " " + total.to_s
       total = 0
     }
   end
  end
  return respuesta
end

puts "Start"

puts read_file("weighted-sum-of-digits.txt")

puts "End"
