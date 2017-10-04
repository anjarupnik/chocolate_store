shopping_cart = []
input = 0
chosen_product = []
sum = 0
products = [
  { id: 1231, name: "Tony", price:2.90 },
  { id: 1232, name: "Kinder Bueno", price: 0.80 },
  { id: 1233, name: "Merci", price: 5 },
  { id: 1234, name: "Ferrero Rocher", price: 2 },
  { id: 1235, name: "Milka", price: 1.90 },
  { id: 1236, name: "Bounty", price: 0.75 },
  { id: 1237, name: "Nestle", price: 2.50 },
  { id: 1238, name: "Mars", price: 1 }
]

puts "Welcome to the Chocolate store!! Here is the list of our products:"
products.each do |product|
  puts product
  end

loop do
  puts "\nWhich chocolate would you like to eat? (write the id number or 0 to exit)"
  input = gets.chomp.to_i
  if input== 0
    puts "\nBye bye"
    break
      else
  shopping_cart = products.find {|value| value[:id]==input}
  puts "\nFollowing item added to shopping cart:\n #{shopping_cart}"
  sum = sum + shopping_cart[:price]
  puts "\nTotal sum: #{sum}"

  end
end
