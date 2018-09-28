# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cindy = User.create(first_name: "Cindy", last_name: "Vo", username: "Cindy", password: "password1")
kelly = User.create(first_name: "Kelly", last_name: "Lwakatare", username: "Kelly", password: "password2")
marylene = User.create(first_name: "Marylene", last_name: "Chan", username: "Marylene", password: "password3")
cart1 = Cart.create(user_id: 1)
cart2 = Cart.create(user_id: 2)
cart3 = Cart.create(user_id: 3)
