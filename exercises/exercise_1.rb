require_relative '../setup'
=begin
- Burnaby (annual_revenue of 300000, carries men's and women's apparel)
- Richmond (annual_revenue of 1260000 carries women's apparel only)
- Gastown (annual_revenue of 190000 carries men's apparel only)
  t.column :name, :string
    t.column :annual_revenue, :integer
    t.column :mens_apparel, :boolean
    t.column :womens_apparel, :boolean
    t.timestamps null: false
=end

puts "Exercise 1"
puts "----------"

store = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true )
store = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true )
store = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false )


total_stores = Store.count
puts total_stores
