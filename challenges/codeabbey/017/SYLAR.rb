#!/usr/bin/ruby

def checkSum (numbers)
  result = 0
  numbers.each_with_index do |num|
    result = result + num
    result = result * 113
    result = result % 10000007
  end
  return result
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

    respuesta = respuesta + " " + checkSum(a).to_s
    a = []
   end
  end
  return respuesta
end

puts "Start"

puts read_file("array-checksum.txt")

puts "End"
