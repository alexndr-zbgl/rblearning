def function arg, k
	t = k - 1
	a = arg*k
	puts "Result is: #{a}^#{t}" 
end
puts "Input two arguments, separeted by comma"
input = gets.chomp
input = input.split(" ")
arg = input[0].to_i
k = input[1].to_i 

function arg, k 