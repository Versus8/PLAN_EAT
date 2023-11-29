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

Planning.delete_all
Ingredient.delete_all
RecipeCategory.delete_all
Category.delete_all
Recipe.delete_all
User.delete_all

puts "creating users"

veronique = User.create(name: "Veronique", email: "veronique@gmail.com", password: "123456")
francoise = User.create(name: "Francoise", email: "francoise@gmail.com", password: "123456")
michael = User.create(name: "Michael", email: "michael@gmail.com", password: "123456")

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
    recipe: recipe_one.id
  )
end

recipe_two = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: francoise
)

10.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_two.id
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
    recipe: recipe_three.id
  )
end

recipe_four = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: michael
)

3.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_four.id
  )
end

recipe_five = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: francoise
)

4.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_five.id
  )
end

recipe_six = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: francoise
)

6.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_six.id
  )
end

recipe_seven = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: michael
)

8.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_seven.id
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
    recipe: recipe_eight.id
  )
end

recipe_nine = Recipe.create(
  name: Faker::Food.dish,
  description: Faker::Food.description,
  preparation: "Cook with love",
  user: michael
)

6.times do
  Ingredient.create(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement.split.last,
    quantity: Faker::Food.measurement.split.first,
    recipe: recipe_nine.id
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
    recipe: recipe_ten.id
  )
end

puts "creating 5 plannings"

Planning.create(
  date: Date.today,
  recipe: recipe_three.id,
  user: francoise
)

Planning.create(
  date: Date.today,
  recipe: recipe_one.id,
  user: michael
)

Planning.create(
  date: Date.today,
  recipe: recipe_eight.id,
  user: francoise
)

Planning.create(
  date: Date.today,
  recipe: recipe_two.id,
  user: francoise
)

Planning.create(
  date: Date.today,
  recipe: recipe_nine.id,
  user: francoise
)

puts "creating 10 categories"

vegetarian = Category.create(name: "Vegetarian")
italian = Category.create(name: "Italian")
healthy = Category.create(name: "Healthy")
french = Category.create(name: "French")
soup = Category.create(name: "Soup")
salad = Category.create(name: "Salad")
breakfirst = Category.create(name: "Breakfast")
lunch = Category.create(name: "Lunch")
easy = Category.create(name: "Easy")
cheap = Category.create(name: "Cheap")

vegetarian_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701222463/development/tuzgkzzi5zxzirxmedhz.jpg")
vegetarian.photo.attach(io: vegetarian_photo, filename: "vegetarian.png", content_type: "image/png")

italian_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701222740/development/cgn038lbuu6tglpibcj9.jpg")
italian.photo.attach(io: italian_photo, filename: "italian.png", content_type: "image/png")

healthy_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701293600/healthy_frosqp.jpg")
healthy.photo.attach(io: healthy_photo, filename: "healthy.png", content_type: "image/png")

french_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701223761/development/vftxkgvxeis46xjm7i9b.jpg")
french.photo.attach(io: french_photo, filename: "french.png", content_type: "image/png")

soup_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701222536/development/z8iarcjhjhn8l5fyz3j7.jpg")
soup.photo.attach(io: soup_photo, filename: "soup.png", content_type: "image/png")

salad_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701222333/development/nhy00jp5mwyqrhnqote7.jpg")
salad.photo.attach(io: salad_photo, filename: "salad.png", content_type: "image/png")

breakfirst_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701222616/development/vw1wqkbdqpzqjgoxqugc.jpg")
breakfirst.photo.attach(io: breakfirst_photo, filename: "breakfirst.png", content_type: "image/png")

lunch_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701222750/development/stzqphvub7f7hservcpf.jpg")
lunch.photo.attach(io: lunch_photo, filename: "lunch.png", content_type: "image/png")

easy_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701223760/development/nv6bjzzrfq7yxwueixmk.jpg")
easy.photo.attach(io: easy_photo, filename: "easy.png", content_type: "image/png")

cheap_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701223760/development/bvpueivmwst0n8pjusak.jpg")
cheap.photo.attach(io: cheap_photo, filename: "cheap.png", content_type: "image/png")



puts "Linking recipes to their categories"

RecipeCategory.create(recipe: recipe_one.id, category: vegetarian)
RecipeCategory.create(recipe: recipe_two.id, category: vegetarian)
RecipeCategory.create(recipe: recipe_three.id, category: easy)
RecipeCategory.create(recipe: recipe_one.id, category: easy)
RecipeCategory.create(recipe: recipe_three.id, category: vegetarian)
RecipeCategory.create(recipe: recipe_four.id, category: salad)
RecipeCategory.create(recipe: recipe_ten.id, category: cheap)
RecipeCategory.create(recipe: recipe_ten.id, category: italian)
RecipeCategory.create(recipe: recipe_one.id, category: healthy)
RecipeCategory.create(recipe: recipe_five.id, category: french)
RecipeCategory.create(recipe: recipe_six.id, category: lunch)
RecipeCategory.create(recipe: recipe_one.id, category: soup)
RecipeCategory.create(recipe: recipe_eight.id, category: breakfirst)
