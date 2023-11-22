# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "json"
require "open-uri"
require "faker"

puts "cleaning database"

Ingredient.delete_all
Recipe.delete_all
User.delete_all

puts "creating users"

veronique = User.create(name: "Veronique", email: "veronique@gmail.com", password: "123456")
francoise = User.create(name: "Francoise", email: "francoise@gmail.com", password: "123456")
michael = User.create(name: "Michael", email: "michael@gmail.com", password: "123456")

puts "Some important users created"

puts "Creating 10 recipes and their ingredients"

recipe_one = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: veronique
)

3.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_one
  )
end

recipe_two = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: veronique
)

10.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_two
  )
end

recipe_three = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: veronique
)

5.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_three
  )
end

recipe_four = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: veronique
)

3.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_four
  )
end

recipe_five = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: veronique
)

4.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_five
  )
end

recipe_six = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: veronique
)

6.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_six
  )
end

recipe_seven = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: veronique
)

8.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_seven
  )
end

recipe_eight = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: veronique
)

2.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_eight
  )
end

recipe_nine = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: veronique
)

6.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_nine
  )
end

recipe_ten = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: veronique
)

5.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_ten
  )
end
