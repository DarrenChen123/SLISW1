puts "Guess a number:"
a = gets()
b = rand(10)
while true
  if a.to_i > b
     puts "Too large\n"
  elsif a.to_i < b
     puts "Too small\n"
  else 
     puts "all right!\n"
     exit
  end
  puts "Guess again:\n"
  a = gets()
end
