puts "Напишіть ціну, знижку та кількість товару"

getnum = gets.chomp
getnum = getnum.split(" ")

price = getnum[0]
disc = getnum[1]
quantity = getnum[2]

differ = price.to_i * disc.to_i / 100

saved_sum = differ * quantity.to_i

saved_sum.round

puts "Заощаджена сума - #{saved_sum.to_s}"