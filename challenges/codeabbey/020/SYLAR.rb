#!/usr/bin/ruby

def count_vowels(string)
  return string.scan(/[aeouiyAEIOUY]/).count
end

def read_file(filename)
  respuesta=" "
  File.foreach(filename).with_index do |line|
   #line=line.split(" ")
   #array_length= line.length
   respuesta = respuesta + " " + count_vowels(line).to_s
  end
  return respuesta
end

puts "Start"

puts read_file("vowelCount.txt")

puts "End"
