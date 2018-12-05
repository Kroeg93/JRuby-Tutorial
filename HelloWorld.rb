require "java"                                              # Use Java classes

#Classes for Tutorial 4
java_import "java.io.BufferedReader"                        # include Java classes FileReader & BufferedReader
java_import "java.io.FileReader"
#Class for Tutorial 6
java_import "java.util.TreeSet"

# FIRST TUTORIAL "HELLO WORLD"
#(output, literal)


stringHello= "Hello World"                                  # StingObject "stringHello"
stringDate = java.util.Date.new                             # StringObject "stringDate"

puts "\nFIRST TUTORIAL : HELLO WORLD"
puts "#{stringHello.to_s}"                                  #puts ausgabe ; to_s convert to string
puts "Date := #{stringDate.to_s}"

# SECOND TUTORIAL "CALCULATING FACTORIAL"
# (Methods, recursive)
# define factorial method

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

# Printing factorial of 5
puts "\nSECOND TUTORIAL : FACTORIAL"
puts factorial(5).to_i

# THIRD TUTORIAL "PRINTING TABLE"
# better output (print for text),

puts "\nTHIRD TUTORIAL : PRINT TABLE"
puts "Enter number to print table :>"
n = gets
#iterates the given block |i| Syntax upto(limit) {|i| block} -> self
# for example 5.upto(10) { |i| print i, " "} #=> 5 6 7 8 9 10
1.upto(3) do |i|
  puts "#{n} * #{i} = #{n.to_i * i.to_i}"
end

# FOURTH TUTORIAL "FILE READER"

puts "\nFOURTH TUTORIAL : FILE READER EXAMPLE"

#Creates a new instance of class FileReader which takes in textfile.txt as its argument
fileReader = FileReader.new "textfile.txt"
#Creates a new instance of class BufferedReader
bufferReader = BufferedReader.new fileReader
#Takes in a line
str = bufferReader.readLine

# Loop until str is false (eof)
while str
  puts str.to_s
  str = bufferReader.readLine
end

# FIFTH TUTORIAL "PRINTING COMMAND LINE ARGUMENTS IN JRUBY"
puts "\nFIFTH TUTORIAL ... ... ... "
puts "Had to be outsourced into the file \n-> tutorial5.rb <- \n due to errors which were thrown\n"

# SIXTH TUTORIAL "TREE SET"
puts "\nSIXTH TUTORIAL\n"

set = TreeSet.new
set.add "Tim"
set.add "Kröger"
set.each do |v|
  puts "values: #{v}"

end

#