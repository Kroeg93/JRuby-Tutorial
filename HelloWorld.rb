require "java"                                              # Use Java classes

java_import "java.io.BufferedReader"
java_import "java.io.FileReader"


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
puts "Enter number to print table
:>"
n = gets
#iterates the given block |i| Syntax upto(limit) {|i| block} -> self
# for example 5.upto(10) { |i| print i, " "} #=> 5 6 7 8 9 10
1.upto(3) do |i|
  puts "#{n} * #{i} = #{n.to_i * i.to_i}"
end

# FOURTH TUTORIAL ""

puts "\nFOURTH TUTORIAL : FILE READER EXAMPLE"

fileReader = FileReader.new "textfile.txt"
bufferReader = BufferedReader.new fileReader
str = bufferReader.readLine

while str
  puts str.to_s
  str = bufferReader.readLine
end