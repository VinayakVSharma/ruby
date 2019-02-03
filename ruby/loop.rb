intArray= [1,2,3,4,5]
intArray.each{ |i|
  puts "#{i}"
}

(1..100).each{ |i|
  print " Value: #{i} "
}

(1..100).select{ |i|
  i % 3 == 0 || i % 5 == 0 
}.each {|a| print " #{a}"}

1.upto(100) { |i|
  puts " Value: #{i} "
}

100.downto(1) { |i|
  puts " Value: #{i} "
}

(1..10).collect do |i|
  puts "Multiple is #{i*2}"
end

1.upto(5) { |i|
  puts "*"*i
}

5.downto(1) { |i|
  puts "*"*i
}

1.upto(10) { |i|
  puts i*i
}

puts (1..10).inject(:+)

puts (1..10).inject(0){|sum,i|
 i % 2 == 0 ? sum+=i : sum
}

puts (1..10).inject(1){|mul,i|
mul*=i
}

puts "Multiple is #{(1..10).reduce(1){|mul,i| mul*=i } }"

puts "Enter number"
a = gets.chomp.to_i
if a>0
  puts "Positive Number"
elsif a<0
  puts "Negative Number"
else
  puts "Number is 0"
end