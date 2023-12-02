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
  name: "Vege Burger",
  description: "These veggie burgers from hit every satisfying, savory note with a hearty mix of pearl barley, chickpeas, mushrooms, and crispy panko.",
  preparation: "1 pound 85% lean ground beef

  1/4 cup grated sweet onion (from 1 small onion)

  2 tablespoons roasted, peeled, and chopped Hatch chiles (from fresh or thawed frozen chiles)

  1 teaspoon kosher salt

  1/2 teaspoon black pepper

  1/4 cup canola oil, divided

  8 white American cheese slices

  4 brioche hamburger buns, split

  1/4 cup unsalted butter, melted

  6 tablespoons mayonnaise

  6 tablespoons Hatch Chile Salsa",
  user: veronique
)

  Ingredient.create(
    name: "onion",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_one
  )

  Ingredient.create(
    name: "cheese",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_one
  )

  Ingredient.create(
    name: "bread",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_one
  )

  Ingredient.create(
    name: "butter",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_one
  )

  Ingredient.create(
    name: "lettuce",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_one
  )


recipe_two = Recipe.create(
  name: "Greek Salad",
  description: "This easy Greek salad recipe is our new favorite summer side dish! Just 7 ingredients + a simple Greek salad dressing make it refreshing & delicious.",
  preparation: " English cucumber, cut lengthwise, seeded, and sliced ¼-inch thick
  1 green bell pepper, chopped into 1-inch pieces
  2 cups halved cherry tomatoes
  5 ounces feta cheese, cut into ½ inch cubes.
  Instructions:
  In a small bowl, whisk together the olive oil, vinegar, garlic, oregano, mustard, salt, and several grinds of pepper.
  On a large platter, arrange the cucumber, green pepper, cherry tomatoes, feta cheese, red onions, and olives.
  Drizzle with the dressing and very gently toss. Sprinkle with a few generous pinches of oregano and top with the mint leaves.
  Season to taste and serve.",
  user: francoise
)

  Ingredient.create(
    name: "tomatoes",
    unit: "cup
",
    quantity: 2,
    recipe: recipe_two
  )
  Ingredient.create(
    name: "feta cheese",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_two
  )
  Ingredient.create(
    name: "cucumber",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_two
  )
  Ingredient.create(
    name: "garlic",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_two
  )
  Ingredient.create(
    name: "green pepper",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_two
  )

recipe_three = Recipe.create(
  name: "Cheeseburger",
  description: "How to make THE BEST cheeseburger! Perfect burger patties every. single. time. Includes an epic burger sauce too!",
  preparation: "½ cup mayonnaise
  ¼ cup ketchup
  3 tablespoons dill pickle relish
  1 tablespoon Dijon mustard
  2 pounds ground beef, 80/20
  Kosher salt and freshly ground black pepper, to taste
  1 tablespoon canola oil
  6 slices American cheese
  Brioche hamburger buns, homemade or store-bought
  Romaine or shredded lettuce
  Sliced tomato
  Sliced red onion
  Dill pickle chips.
  BURGER SAUCE: In a small bowl, whisk together mayonnaise, ketchup, dill pickle relish and Dijon; set aside.
  In a large bowl, combine beef, 1 1/2 teaspoons salt and 1 1/2 teaspoons pepper. Using a wooden spoon or clean hands, stir until well combined. Gently form into 6 1-inch-thick patties, about the size of the hamburger buns.
  Heat canola oil in a large cast iron skillet over medium high heat. Add patties and cook until lightly charred or until desired doneness, about 3-5 minutes per side; top with cheese.
  Serve immediately in hamburger buns with BURGER SAUCE and desired toppings.",
  user: veronique
)


  Ingredient.create(
    name: "bread",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_three
  )
  Ingredient.create(
    name: "lettuce",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_three
  )
  Ingredient.create(
    name: "onion",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_three
  )
  Ingredient.create(
    name: "tomatoes",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_three
  )
  Ingredient.create(
    name: "cheese",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_three
  )
  Ingredient.create(
    name: "mustard",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_three
  )
  Ingredient.create(
    name: "mayonnaise",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_three
  )
  Ingredient.create(
    name: "ketchup",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_three
  )


recipe_four = Recipe.create(
  name: "Pasta Carbonara",
  description: "With crispy bits of pork, a peppery bite, and a velvety cheese sauce enriched with eggs, carbonara is just as easy to make for dinner as it is at 2 a.m",
  preparation: "3

  Tbsp. kosher salt, plus more
  4

  oz. guanciale (salt-cured pork jowl), pancetta (Italian bacon), or bacon
  2

  oz. Parmesan or Pecorino Romano
  4

  large egg yolks
  2

  large eggs
  Freshly ground black pepper
  2

  Tbsp. extra-virgin olive oil
  1

  lb. spaghetti, bucatini, or rigatoni",
  user: michael
)

  Ingredient.create(
    name: "eggs",
    unit: "cup
",
    quantity: 2,
    recipe: recipe_four
  )
  Ingredient.create(
    name: "cheese",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_four
  )

  Ingredient.create(
    name: "pasta",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_four
  )
  Ingredient.create(
    name: "bacon",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_four
  )
  Ingredient.create(
    name: "oil",
    unit: "cup
",
    quantity: 2,
    recipe: recipe_four
  )




recipe_five = Recipe.create(
  name: "Sushi Futomaki",
  description: "Learn how to make Futomaki or Maki Sushi, a traditional thick sushi roll filled with colorful ingredients. You can make this delicious sushi roll ahead of time and pack it for picnics, potlucks, and celebrations.",
  preparation: "Tamagoyaki / Dashimaki Tamago
  Simmered Kanpyo (gourd strips)
  Simmered Shiitake Mushrooms
  Mitsuba or Spinach
  Cucumber
  Cooked unagi (freshwater eel) or anago (saltwater eel)
  Sakura Denbu (Seasoned Codfish Flakes).",
  user: francoise
)

  Ingredient.create(
    name: "groud strip",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_five
  )
  Ingredient.create(
    name: "mushrooms",
    unit: "cup
",
    quantity: 3,
    recipe: recipe_five
  )
  Ingredient.create(
    name: "spinach",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_five
  )
  Ingredient.create(
    name: "cucumber",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_five
  )


recipe_six = Recipe.create(
  name: "Feijoada",
  description: "Brazilian Feijoada is a black bean and pork stew that Brazilians often serve topped with farofa, toasted cassava flour. Many call this comfort food the national dish of Brazil.",
  preparation: "1 pound dry black beans (soaked overnight)*
  1 tablespoon olive oil
  4 ounces slab bacon (rind removed), diced
  1 pound pork ribs, cut into individual ribs
  2 Mexican chorizo sausages (roughly 11 oz each), sliced**
  1 smoked sausage (roughly 7 oz), such as linguica or kielbasa, sliced
  1 large onion, chopped
  4 cloves garlic, minced
  3 tomatoes, diced
  1 teaspoon salt
  1 teaspoon ground black pepper
  3 bay leaves
  water
  white rice (for serving)
  farofa (for serving)
  In a large bowl with water, soak beans overnight.
  When you are ready to make your stew, in a large heavy-bottom soup pot, over medium heat, add the oil and bacon. Cook until crisp and transfer to a plate.
  Use the same saucepan to brown ribs and sausages in batches. (You will want to be sure to cook the sliced Mexican chorizo on its own, as it can be very greasy. Drain the grease before continuing.) Set each aside as cooked.
  If needed, add more oil to the pan. On medium-high, sauté onion, and garlic until soft and translucent, about 5 minutes. Add tomatoes and cook for another 3 minutes.
  Drain and rinse the soaked beans. Add them to the pot along with the ribs, bacon, sausages, salt, pepper, and bay leaf. Cover with water (about 8 cups).
  Bring the mixture to a boil and reduce the heat to low. Cover and let it cook for 2 to 2 and a half hours, or until the beans are soft.
  If the stew is too liquidy, uncover the saucepan and continue to cook for another 20 minutes to allow some of the liquid to evaporate.
  Serve with white rice and sprinkle some farofa on top.",
  user: francoise
)

  Ingredient.create(
    name: "onion",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_six
  )
  Ingredient.create(
    name: "garlic",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_six
  )
  Ingredient.create(
    name: "farofa",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_six
  )
  Ingredient.create(
    name: "black beans",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_six
  )
  Ingredient.create(
    name: "bacon",
    unit: "cup
",
    quantity: 2,
    recipe: recipe_six
  )
  Ingredient.create(
    name: "ribs",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_six
  )
  Ingredient.create(
    name: "rice",
    unit: "cup
",
    quantity: 4,
    recipe: recipe_six
  )
  Ingredient.create(
    name: "bay leaves",
    unit: "cup
",
    quantity: 5,
    recipe: recipe_six
  )
  Ingredient.create(
    name: "tomatoes",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_six
  )

recipe_seven = Recipe.create(
  name: "Tiramisu",
  description: "This delicious and unbelievably easy Tiramisu recipe is made with coffee soaked lady fingers, sweet and creamy mascarpone (no raw eggs!), and cocoa powder dusted on top. It requires no baking and can be made in advance!",
  preparation: "1 1/2 cups heavy whipping cream
  ▢8 ounce container mascarpone cheese ,room temperature
  ▢1/3 cup granulated sugar
  ▢1 teaspoon vanilla extract
  ▢1 1/2 cups cold espresso
  ▢3 Tablespoons coffee flavored liqueur ,optional (Kahlua or DaVinci brands)
  ▢1 package Lady Fingers ,Savoiardi brand can be found in the cookie aisle at your local grocery store, or online
  ▢Cocoa powder for dusting the top
  Add coffee and liqueur to a shallow bowl. Dip the lady fingers in the coffee (Don't soak them--just quickly dip them on both sides to get them wet) and lay them in a single layer on the bottom of an 8x8'' or similar size pan.
  Smooth half of the mascarpone mixture over the top. Add another layer of dipped lady fingers. Smooth remaining mascarpone cream over the top.
  Dust cocoa powder generously over the top (I use a fine mesh strainer to do this). Refrigerate for at least 3-4 hours or up to overnight before serving.
  Add whipping cream to a mixing bowl and beat on medium speed with electric mixers (or use a stand mixer). Slowly add sugar and vanilla and continue to beat until stiff peaks. Add mascarpone cheese and fold in until combined. Set aside.",
  user: michael
)

  Ingredient.create(
    name: "sugar",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_seven
  )
  Ingredient.create(
    name: "vanilla",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_six
  )
  Ingredient.create(
    name: "espresso",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_six
  )
  Ingredient.create(
    name: "coffee",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_six
  )
  Ingredient.create(
    name: "liqueur",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_six
  )
  Ingredient.create(
    name: "mascarpone cheese",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_six
  )
  Ingredient.create(
    name: "cream",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_six
  )

recipe_eight = Recipe.create(
  name: "Banana Split",
  description: "Banana Split-this classic ice cream dessert starts with a fresh banana, three scoops of ice cream (vanilla, chocolate, and strawberry), pineapple, chocolate syrup, and strawberries. Oh, and don't forget the whipped cream, nuts, and maraschino cherries. Grab a spoon and dig in!",
  preparation: "Ice cream- a scoop of vanilla, chocolate, and strawberry
  Crushed pineapple or chopped fresh pineapple
  Chocolate syrup
  Strawberry sauce or chopped fresh strawberries
  Whipped cream
  Maraschino cherries
  Chopped peanuts",
  user: veronique
)

  Ingredient.create(
    name: "banana",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_eight
  )
  Ingredient.create(
    name: "Ice cream",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_eight
  )
  Ingredient.create(
    name: "Chocolate Syrup",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_eight
  )
  Ingredient.create(
    name: "Strawberry",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_eight
  )
  Ingredient.create(
    name: "cream",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_eight
  )
  Ingredient.create(
    name: "peanuts",
    unit: "cup
",
    quantity: 1,
    recipe: recipe_eight
  )

recipe_nine = Recipe.create(
  name: "Pad Thai",
  description: "This amazing Pad Thai recipe is easy and comes together in under 30 minutes. It starts with fresh ingredients including rice noodles, chicken, shrimp, tofu, peanuts, scrambled eggs, and fresh vegetables all tossed together in a delicious homemade pad thai sauce.",
  preparation: "8 ounces flat rice noodles
  ▢3 Tablespoons oil
  ▢3 cloves garlic , minced
  ▢8 ounces uncooked shrimp, chicken, or extra-firm tofu , cut into small pieces
  ▢2 eggs
  ▢1 cup fresh bean sprouts
  ▢1 red bell pepper , thinly sliced
  ▢3 green onions , chopped
  ▢1/2 cup dry roasted peanuts
  ▢2 limes
  ▢1/2 cup Fresh cilantro , chopped
  3 Tablespoons fish sauce
  ▢1 Tablespoon low-sodium soy sauce
  ▢5 Tablespoons light brown sugar
  ▢2 Tablespoons rice vinegar , or Tamarind Paste*
  ▢1 Tablespoon Sriracha hot sauce , or more, to taste
  ▢2 Tablespoons creamy peanut butter* (optional)",
  user: michael
)

Ingredient.create(
  name: "garlic",
  unit: "cup",
  quantity: 3,
  recipe: recipe_nine
)
Ingredient.create(
  name: "eggs",
  unit: "cup",
  quantity: 2,
  recipe: recipe_nine
)
Ingredient.create(
  name: "shrimp",
  unit: "cup",
  quantity: 1,
  recipe: recipe_nine
)
Ingredient.create(
  name: "chicken",
  unit: "cup",
  quantity: 1,
  recipe: recipe_nine
)
Ingredient.create(
  name: "red pepper",
  unit: "cup",
  quantity: 1,
  recipe: recipe_nine
)

Ingredient.create(
  name: "rice noodle",
  unit: "cup",
  quantity: 1,
  recipe: recipe_nine
)

Ingredient.create(
  name: "onion",
  unit: "cup",
  quantity: 1,
  recipe: recipe_nine
)

Ingredient.create(
  name: "sugar",
  unit: "cup",
  quantity: 1,
  recipe: recipe_nine
)
Ingredient.create(
  name: "vinegar",
  unit: "cup",
  quantity: 1,
  recipe: recipe_nine
)

Ingredient.create(
  name: "fish sauce",
  unit: "cup",
  quantity: 1,
  recipe: recipe_nine
)




recipe_ten = Recipe.create(
  name: "Pizza Calabrese",
  description: "This Calabrese pizza highlights the wonderful flavors of Southern Italy - olives, anchovies and capers with a hint of heat. It's the perfect combination!",
  preparation: "bread flour - preferred but if you don't have it just use all purpose/plain
  dried active yeast - even instant yeast is fine but the dough may rise more quickly
  warm water - hot water will kill the yeast so make sure it's just warm
  salt - I use fine sea salt
  extra virgin olive oil - use abundantly
  garlic - fresh is best
  canned tomatoes in tomato puree - preferably San Marzano but definitely buy good quality because it will be less watery
  black olives - be sure to get stone-in olives which they have must more flavor
  capers - the ones in vinegar are fine
  anchovies - buy the best quality you can find
  oregano - dried
  red pepper (chilli) flakes - can't be Calabrese pizza without heat",
  user: veronique
)

  Ingredient.create(
    name: "salt",
    unit: "cup",
    quantity: 1,
    recipe: recipe_ten
  )
  Ingredient.create(
    name: "calabrese",
    unit: "cup",
    quantity: 1,
    recipe: recipe_ten
  )
  Ingredient.create(
    name: "black olives",
    unit: "cup",
    quantity: 1,
    recipe: recipe_ten
  )
  Ingredient.create(
    name: "red pepper",
    unit: "cup",
    quantity: 1,
    recipe: recipe_ten
  )
  Ingredient.create(
    name: "bread",
    unit: "cup",
    quantity: 1,
    recipe: recipe_ten
  )
  Ingredient.create(
    name: "tomatoes",
    unit: "cup",
    quantity: 1,
    recipe: recipe_ten
  )

puts "creating 5 plannings"

Planning.create(
  date: Date.today,
  recipe: recipe_three,
  user: francoise
)

Planning.create(
  date: Date.today,
  recipe: recipe_one,
  user: michael
)

Planning.create(
  date: Date.today,
  recipe: recipe_eight,
  user: francoise
)

Planning.create(
  date: Date.today,
  recipe: recipe_two,
  user: francoise
)

Planning.create(
  date: Date.today,
  recipe: recipe_nine,
  user: francoise
)

puts "creating 10 categories"

italian = Category.create(name: "Italian")
healthy = Category.create(name: "Healthy")
asiatique = Category.create(name: "Asiatique")
lunch = Category.create(name: "Lunch&Diner")
fast = Category.create(name: "Fast")
dessert = Category.create(name: "Dessert")


italian_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701222740/development/cgn038lbuu6tglpibcj9.jpg")
italian.photo.attach(io: italian_photo, filename: "italian.png", content_type: "image/png")

healthy_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701293600/healthy_frosqp.jpg")
healthy.photo.attach(io: healthy_photo, filename: "healthy.png", content_type: "image/png")

asiatique_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701223761/development/vftxkgvxeis46xjm7i9b.jpg")
asiatique.photo.attach(io: asiatique_photo, filename: "asiatique.png", content_type: "image/png")

lunch_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701222536/development/z8iarcjhjhn8l5fyz3j7.jpg")
lunch.photo.attach(io: lunch_photo, filename: "lunch.png", content_type: "image/png")

fast_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701222333/development/nhy00jp5mwyqrhnqote7.jpg")
fast.photo.attach(io: fast_photo, filename: "fast.png", content_type: "image/png")

dessert_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701222616/development/vw1wqkbdqpzqjgoxqugc.jpg")
dessert.photo.attach(io: dessert_photo, filename: "dessert.png", content_type: "image/png")




puts "Linking recipes to their categories"

RecipeCategory.create(recipe: recipe_one, category: healthy)
RecipeCategory.create(recipe: recipe_two, category: healthy)
RecipeCategory.create(recipe: recipe_three, category: fast)
RecipeCategory.create(recipe: recipe_one, category: lunch)
RecipeCategory.create(recipe: recipe_three, category: lunch)
RecipeCategory.create(recipe: recipe_four, category: italian)
RecipeCategory.create(recipe: recipe_one, category: fast)
RecipeCategory.create(recipe: recipe_ten, category: italian)
RecipeCategory.create(recipe: recipe_seven, category: dessert)
RecipeCategory.create(recipe: recipe_five, category: asiatique)
RecipeCategory.create(recipe: recipe_six, category: lunch)
RecipeCategory.create(recipe: recipe_nine, category: asiatique)
RecipeCategory.create(recipe: recipe_eight, category: dessert)
RecipeCategory.create(recipe: recipe_three, category: lunch)
RecipeCategory.create(recipe: recipe_four, category: lunch)
RecipeCategory.create(recipe: recipe_five, category: lunch)
RecipeCategory.create(recipe: recipe_nine, category: lunch)
RecipeCategory.create(recipe: recipe_ten, category: lunch)
