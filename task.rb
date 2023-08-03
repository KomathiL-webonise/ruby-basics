################### 1.Compute the sum of cubes for a given range a through b. Write a method called sum_of_cubes to accomplish this task. Example Given range 1 to 3 the method should return 36.

def sum_of_cubes(a, b)
    sum = 0
    (a..b).each do |num|
      sum += num**2
    end
    sum
  end
  
  
  result = sum_of_cubes(1, 3)
  puts result

###################  2.Given an Array, return the elements that are present exactly once in the array. You need to write a method called non_duplicated_values to accomplish this task. Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5]

def non_duplicated_values(arr)
    counts = Hash.new(0)
  
    arr.each do |element|
      counts[element] += 1
    end
  
    non_duplicated = []
    counts.each do |element, count|
      non_duplicated << element if count == 1
    end
  
    non_duplicated
  end
  
 
  arr = [1, 2, 2, 3, 3, 4, 5, 6, 6]
  result = non_duplicated_values(arr)
  puts result.inspect 

  ###################  3.Given a sentence, return true if the sentence is a palindrome. You are supposed to write a method palindrome? to accomplish this task. 
# Note: Ignore whitespace and cases of characters. Example: Given ""Never odd or even"" the method should return true.

  def palindrome?(sentence)
    
    clean_sentence = sentence.downcase.gsub(/\s+/, "")
  
    clean_sentence == clean_sentence.reverse
  end
  
  sentence = "Never odd or even"
  result = palindrome?(sentence)
  puts result 
  
#########################  4. is a Kaprekar number since 9 ^ 2 = 81 and 8 + 1 = 9, 297 is also Kaprekar number since 297 ^ 2 = 88209 and 88 + 209 = 297. In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. Find if a given number is a Kaprekar number.
def kaprekar_number?(num)
    square = num**2
    num_digits = num.to_s.length
    square_str = square.to_s
  
    left_part = square_str[0...-num_digits].to_i
    right_part = square_str[-num_digits..].to_i
  
    sum = left_part + right_part
  
    sum == num
  end
  
  # Test cases
  puts kaprekar_number?(9)   
  puts kaprekar_number?(297) 
  puts kaprekar_number?(45)

#########################  5.Assignment
# Print "12th Jan 2012":
require 'date'

current_date=Date.today
puts current_date
#Print "12th Jan 2012":
date = Date.new(2012, 1, 12)
puts date.strftime("%d %b %Y")


#Add 7 days to the current date:

current_date = Date.today
future_date = current_date + 7
puts future_date

#Compare two dates and calculate the days between them:


date1 = Date.new(2010, 4, 12)
date2 = Date.new(2011, 5, 12)

days_difference = (date2 - date1).to_i
puts days_difference


# Print the date after 20 days from the current date:
current_date =Date.today
after_date = current_date + 20
puts after_date

# Date in array format

current_date = Date.today
date_array = [current_date.year, current_date.month, current_date.day]
puts date_array.inspect
#########################  6.Print prime numbers from the given array

def is_prime?(number)
    return false if number <= 1
  
    (2..Math.sqrt(number)).none? { |i| number % i == 0 }
  end
  
  def print_prime_numbers(array)
    prime_numbers = array.select { |num| is_prime?(num) }
  
    puts "Prime numbers in the array: #{prime_numbers}"
  end
  
 
  arr = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
  print_prime_numbers(arr)
  
  #################################### 7.Write a program for fuel indication.
# Ex: 0 -> Out of fuel, 1-10 -> Low, Please fill, 11-30 -> Good for now, 31-50 -> Almost Full, > 50 -> Full
  def fuel_indication(fuel_level)
    case fuel_level
    when 0
      puts "Out of fuel"
    when 1..10
      puts "Low fuel."
    when 11..30
      puts "Good for now."
    when 31..50
      puts "Almost full."
    else
      puts "Full"
    end
  end
  
  puts fuel_indication(0)
  puts fuel_indication(5)
  puts fuel_indication(25)
  puts fuel_indication(35)
  puts fuel_indication(55)

  ###################################  8.Swap the given values(without the third variable)

  def swap_values(a, b)
    a = a + b
    b = a - b
    a = a - b
  
    return a, b
  end
  
  x = 5
  y = 10
  x, y = swap_values(x, y)
  puts "x: #{x}, y: #{y}" 

  ######################################  9.Program to Randomly Select an Element From the Array



my_array = [1, 2, 3, 4, 6, 8, 9, 10]

random_element = my_array.sample

puts "Randomly selected element: #{random_element}"

  
  ##################################### 10.Program to Count the Number of Each Vowel

def count_vowels(str)
vowels = ['A', 'E', 'I', 'O', 'U']
vowel_counts = Hash.new(0)

str.upcase.each_char do |char|
    if vowels.include?(char)
    vowel_counts[char] += 1
    end
end

vowel_counts
end


puts "Enter a string:"
input_string = gets.chomp

result = count_vowels(input_string)
puts "Vowel counts: #{result}"



  ###############################  11.Program to Sort a Hash by Value

my_hash = { "apple" => 5, "banana" => 2, "orange" => 7, "grapes" => 3 }

sorted_hash = my_hash.sort_by { |key, value| value }.to_h

puts "Sorted hash by value in ascending order:"
puts sorted_hash
  ################################ 12.Program to Convert Two Arrays Into a Hash

  # Sample arrays
keys = [:a, :b, :c]
values = [1, 2, 3]

my_hash = keys.zip(values).to_h

puts "Resulting hash:"
puts my_hash

  