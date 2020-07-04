puts "Введіть номер планети: "
number = gets.chomp
number = number.to_i

case number
when 1 then puts "Меркурій"
when 2 then puts "Венера"
when 3 then puts "Земля"
when 4 then puts "Марс"
when 5 then puts "Юпітер"
when 6 then puts "Сатурн"
when 7 then puts "Уран"
when 8 then puts "Нептун"
else puts "Введіть правильний номер планети (1-8)"
end	