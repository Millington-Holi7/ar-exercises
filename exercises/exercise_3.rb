require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
=begin
1. Load the third store (into `@store3`) as you did the other two before.
2. Using Active Record's `destroy` method, delete the store from the database.
3. Verify that the store has been deleted by again outputting (`puts`ing) the `count` (as you did in Exercise 1.)
=end

puts "Exercise 3"
puts "----------"

store = Store.create(name: "Apple", annual_revenue: 7700000, mens_apparel: true, womens_apparel: true )
store = Store.find_by(name: "Apple")
store.destroy

total_stores = Store.count
puts total_stores