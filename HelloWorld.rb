require "java"                                              # Use Java classes

#Classes for Tutorial 4 - FileReader
java_import "java.io.BufferedReader"                        # include Java classes FileReader & BufferedReader
java_import "java.io.FileReader"
#Class for Tutorial 6 - TreeSet
java_import "java.util.TreeSet"
#Class for Tutorial 13 - Arraylist
java_import "java.util.ArrayList"

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

# EIGHT TUTORIAL "FOR LOOP"
# SYNTAX :
# for i in start_value .. end_value
# ................
#     Statement 1
#     Statement 2
# ..................
# end

# USING FOR LOOP
puts "EIGHT TUTORIAL : FOR LOOP\n"
print "\nThe following lines are generated through a for loop\n"
for i in 1..5
  puts "Value is => #{i}"
end

# NINTH TUTORIAL : CREATING A CLASS IN JRUBY

puts "\nNINTH TUTORIAL : CREATING & USING CLASSES\n"

class Employee
  def information
    puts "Name : Tim"
    puts "Age : 25"
    puts "Company : d.velop"
  end
  def salary
    puts "First Name : Tim"
    puts "Basic Scale : 12000-15000"
    puts "Transport Allowance : 1500"
    puts "Deductions : 2000"
    puts "=========================="
    puts "Total : 24000"
  end
end

#Creating a new employee object
emp = Employee.new

#printing employee information
puts "Employee Information List"
puts "#{emp.information}"
#printing employee salary
puts "Employee Salary"
puts "#{emp.salary}"

# TENTH TUTORIAL : INHERITANCE

puts "\nTENTH TUTORIAL : INHERITANCE"

class Base
  def add
    print "Hello Base"
  end
end

class Derive < Base
  def addDerive
    print "Hello Derive"
  end
end

#Creating instance of DeriveClass
derive = Derive.new
puts derive.add
puts "#{derive.addDerive}\n\n"


# ELEVENTH TUTORIAL : METHOD OVERRIDING
puts "ELEVENTH TUTORIAL : METHOD OVERRIDING\n"
class BaseTwo
  def addBase
    print "Hello Base"
  end
end

class DeriveTwo < BaseTwo
  def addBase
    print "Hello Derived Base - overwritten from class: DeriveTwo"
  end

  def addDerive
    print "Hello Derived"
  end
end

# Creating instance of Base class
puts "Base Class:\nOutput:\n"
baseInstanceTwo = BaseTwo.new
puts "#{baseInstanceTwo.addBase}\n\n"
# Creating instance of Derive class
puts "Derive Class:\nOutput:\n"
deriveInstanceTwo = DeriveTwo.new
puts deriveInstanceTwo.addBase
puts deriveInstanceTwo.addDerive

# TWELFTH TUTORIAL : CASE
puts "\nTWELFTH TUTORIAL CASE\n"
puts "<<<=== USE OF CASE IN JRUBY ===>>>\n"

print "*** Select your Choice ***\n"
print " 1 Add \n"
print " 2 Substract \n"
print " 3 Multiply \n"
print " 4 Divide \n"
print " :> "
choice = gets
print " First Number :> "
n1 = gets
print " Second NUmber :> "
n2  = gets
case choice.to_i
when 1
  puts " Addition is = #{n1.to_i + n2.to_i}"
when 2
  puts " Substraction is = #{n1.to_i - n2.to_i}"
when 3
  puts " Multiplication is = #{n1.to_i * n2.to_i}"
when 4
  puts " Division is = #{n1.to_i / n2.to_i}"
end

# THIRTEENTH TUTORIAL : ARRAY LIST
puts "\nTHIRTEENTH TUTORIAL : ARRAY LIST\n"
puts "Output: Arraylist\n"
arrlist = ArrayList.new
arrlist.add "Tim"
arrlist.add "Lucie"
arrlist.add "Kathi"
puts "#{arrlist}"