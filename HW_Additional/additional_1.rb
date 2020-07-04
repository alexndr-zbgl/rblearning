puts "Введіть номер місяця"
month = gets.chomp
quartal = 0
case month
when "1", "2", "3" then quartal = 1
when "4", "5", "6" then quartal = 2
when "7", "8", "9" then quartal = 3
when "10", "11", "12" then quartal = 4	
end
puts "#{quartal.to_i} квартал"