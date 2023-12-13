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
UserIngredient.delete_all
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

recipe_one = Recipe.new(
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

recipe_one_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701548838/veggie-burgers-1-2_zmrbuf.webp")
recipe_one.photo.attach(io: recipe_one_photo, filename: "recipe_one.png", content_type: "image/png")
recipe_one.save

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


recipe_two = Recipe.new(
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

recipe_two_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701549236/greeksalad_ctfmou.jpg")
recipe_two.photo.attach(io: recipe_two_photo, filename: "recipe_four.png", content_type: "image/png")
recipe_two.save

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

recipe_three = Recipe.new(
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

recipe_three_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701549433/Cheeseburger-Recipe-9_f9y2xi.jpg")
recipe_three.photo.attach(io: recipe_three_photo, filename: "recipe_three.png", content_type: "image/png")
recipe_three.save

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


recipe_four = Recipe.new(
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

recipe_four_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701549578/carbonara_zwyvfa.jpg")
recipe_four.photo.attach(io: recipe_four_photo, filename: "recipe_four.png", content_type: "image/png")
recipe_four.save

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




recipe_five = Recipe.new(
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

recipe_five_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701549865/Futomaki-1-500x500_ukj6ug.jpg")
recipe_five.photo.attach(io: recipe_five_photo, filename: "recipe_five.png", content_type: "image/png")
recipe_five.save

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


recipe_six = Recipe.new(
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

recipe_six_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701550136/Vegan-Brazilian-Feijoada-FI_uohlc6.jpg")
recipe_six.photo.attach(io: recipe_six_photo, filename: "recipe_six.png", content_type: "image/png")
recipe_six.save

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

recipe_seven = Recipe.new(
  name: "Tiramisu",
  description: "This delicious and unbelievably easy Tiramisu recipe is made with coffee soaked lady fingers, sweet and creamy mascarpone (no raw eggs!), and cocoa powder dusted on top. It requires no baking and can be made in advance!",
  preparation: "1 1/2 cups heavy whipping cream
  8 ounce container mascarpone cheese ,room temperature
  1/3 cup granulated sugar
  1 teaspoon vanilla extract
  1 1/2 cups cold espresso
  3 Tablespoons coffee flavored liqueur ,optional (Kahlua or DaVinci brands)
  1 package Lady Fingers ,Savoiardi brand can be found in the cookie aisle at your local grocery store, or online
  Cocoa powder for dusting the top
  Add coffee and liqueur to a shallow bowl. Dip the lady fingers in the coffee (Don't soak them--just quickly dip them on both sides to get them wet) and lay them in a single layer on the bottom of an 8x8'' or similar size pan.
  Smooth half of the mascarpone mixture over the top. Add another layer of dipped lady fingers. Smooth remaining mascarpone cream over the top.
  Dust cocoa powder generously over the top (I use a fine mesh strainer to do this). Refrigerate for at least 3-4 hours or up to overnight before serving.
  Add whipping cream to a mixing bowl and beat on medium speed with electric mixers (or use a stand mixer). Slowly add sugar and vanilla and continue to beat until stiff peaks. Add mascarpone cheese and fold in until combined. Set aside.",
  user: michael
)

recipe_seven_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701550195/tiramisu-square-500x500_jbcoyq.jpg")
recipe_seven.photo.attach(io: recipe_seven_photo, filename: "recipe_seven.png", content_type: "image/png")
recipe_seven.save

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

recipe_eight = Recipe.new(
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

recipe_eight_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701550286/banana-split-scaled_weempr.jpg")
recipe_eight.photo.attach(io: recipe_eight_photo, filename: "recipe_eight.png", content_type: "image/png")
recipe_eight.save

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

recipe_nine = Recipe.new(
  name: "Pad Thai",
  description: "This amazing Pad Thai recipe is easy and comes together in under 30 minutes. It starts with fresh ingredients including rice noodles, chicken, shrimp, tofu, peanuts, scrambled eggs, and fresh vegetables all tossed together in a delicious homemade pad thai sauce.",
  preparation: "8 ounces flat rice noodles
  3 Tablespoons oil
  3 cloves garlic , minced
  8 ounces uncooked shrimp, chicken, or extra-firm tofu , cut into small pieces
  2 eggs
  1 cup fresh bean sprouts
  1 red bell pepper , thinly sliced
  3 green onions , chopped
  1/2 cup dry roasted peanuts
  2 limes
  1/2 cup Fresh cilantro , chopped
  3 Tablespoons fish sauce
  1 Tablespoon low-sodium soy sauce
  5 Tablespoons light brown sugar
  2 Tablespoons rice vinegar , or Tamarind Paste*
  1 Tablespoon Sriracha hot sauce , or more, to taste
  2 Tablespoons creamy peanut butter* (optional)",
  user: michael
)

recipe_nine_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701550345/1200px-Phat_Thai_kung_Chang_Khien_street_stall_poxd1q.jpg")
recipe_nine.photo.attach(io: recipe_nine_photo, filename: "recipe_nine.png", content_type: "image/png")
recipe_nine.save

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




recipe_ten = Recipe.new(
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

recipe_ten_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701550505/antipasto-calabrese-pizza---gluten-free-64374_640x480_10794d8b_hetc3z.jpg")
recipe_ten.photo.attach(io: recipe_ten_photo, filename: "recipe_ten.png", content_type: "image/png")
recipe_ten.save

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


  recipe_eleven = Recipe.new(
    name: "Pizza Margarita",
    description: "These gluten free margarita pizza is the best meal that you can have at night while whatching netflix",
    preparation: "1 ¾ cup Robin Hood® Gluten Free Flour Blend
    1 tbsp instant quick rise yeast
    1 tsp granulated sugar
    1 tsp salt
    1 1/4 cups warm water (105°-115°F/40°-56°C)
    2 tbsp olive oil, divided
    ½ cup tomato sauce
    2 cups grated mozzarella cheese
    ¼ cup chopped fresh basil
    ",
    user: veronique
  )

  recipe_eleven_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702240295/pizza-sans-gluten_dxjeqg.jpg")
  recipe_eleven.photo.attach(io: recipe_eleven_photo, filename: "recipe_eleven.png", content_type: "image/png")
  recipe_eleven.save

    Ingredient.create(
      name: "sugar",
      unit: "cup
  ",
      quantity: 1,
      recipe: recipe_eleven
    )

    Ingredient.create(
      name: "salt",
      unit: "cup
  ",
      quantity: 1,
      recipe: recipe_eleven
    )

    Ingredient.create(
      name: "oil",
      unit: "cup
  ",
      quantity: 1,
      recipe: recipe_eleven
    )

    Ingredient.create(
      name: "tomatoes",
      unit: "cup
  ",
      quantity: 1,
      recipe: recipe_eleven
    )

    Ingredient.create(
      name: "mozzarella",
      unit: "cup
  ",
      quantity: 1,
      recipe: recipe_eleven
    )



    recipe_twelve = Recipe.new(
      name: "Kumquat Achaar",
      description: "The best one of halaal meals",
      preparation: "
      • 6 tbsp Chillies, red rough
      • 2 tbsp Garlic
      • 900 Grms apricot jam
      • 400 Grm methi
      • 3 tbsp Mustard seed
      • 2 1/2 tbsp Salt adjust to your liking, fine
      • 4 tbsp Sesame seed
      ",
      user: veronique
    )

    recipe_twelve_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702241815/2020-09-22-13-55-52-AQzfY_uyfd30.jpg")
    recipe_twelve.photo.attach(io: recipe_twelve_photo, filename: "recipe_twelve.png", content_type: "image/png")
    recipe_twelve.save

      Ingredient.create(
        name: "red rough",
        unit: "cup
    ",
        quantity: 1,
        recipe: recipe_twelve
      )

      Ingredient.create(
        name: "garlic",
        unit: "cup
    ",
        quantity: 1,
        recipe: recipe_twelve
      )

      Ingredient.create(
        name: "apricot",
        unit: "cup
    ",
        quantity: 1,
        recipe: recipe_twelve
      )

      Ingredient.create(
        name: "mustard",
        unit: "cup
    ",
        quantity: 1,
        recipe: recipe_twelve
      )

      Ingredient.create(
        name: "sesame seed",
        unit: "cup
    ",
        quantity: 1,
        recipe: recipe_twelve
      )

      recipe_thirteen = Recipe.new(
        name: "Napolitan Pizza",
        description: "Our Pizza Flour is milled from 100% American-grown wheat to precise “00” standards: perfect for homemade Neapolitan-style pizza. Its silky smooth texture creates an easy-to-shape dough that yields a wonderfully chewy, crispy crust. This is destined to be your new go-to recipe for pizza night!",
        preparation: "
        2 cups (232g) King Arthur, Pizza Flour
        1/8 teaspoon instant yeast or active dry yeast
        1/2 teaspoon granulated sugar
        1 1/4 teaspoons (8g) table salt
        3/4 cup (170g) water, lukewarm, (105° to 115°F)
        ",
        user: veronique
      )

      recipe_thirteen_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702242684/1500x1500-Photo-1_1968-How-to-MAKE-NEAPOLITAN-PIZZA-with-Dry-Yeast-at-Home-Better-than-a-Pizzeria-in-Naples-V1_tmhgcg.jpg")
      recipe_thirteen.photo.attach(io: recipe_thirteen_photo, filename: "recipe_thirteen.png", content_type: "image/png")
      recipe_thirteen.save

        Ingredient.create(
          name: "pizza flour",
          unit: "cup
      ",
          quantity: 1,
          recipe: recipe_thirteen
        )

        Ingredient.create(
          name: "dry yeast",
          unit: "cup
      ",
          quantity: 1,
          recipe: recipe_thirteen
        )

        Ingredient.create(
          name: "sugar",
          unit: "cup
      ",
          quantity: 1,
          recipe: recipe_thirteen
        )

        Ingredient.create(
          name: "salt",
          unit: "cup
      ",
          quantity: 1,
          recipe: recipe_thirteen
        )

        recipe_fourteen = Recipe.new(
          name: "Beef Ragu",
          description: "Beef ragu—a traditional Italian dish—is a slow-simmered sauce made with beef, tomatoes, pasta, etc. Many newer ragu recipes use sambal oelek or anchovy paste to help build flavor, so I've used harissa, but feel free to replace with 1/2 teaspoon crushed red pepper or 1 teaspoon fennel seeds or omit. If you like you can add rosemary sprigs to the sauce as it simmers.",
          preparation: "
          2 tablespoons olive oil

          1 (2 pound) boneless beef chuck roast, cut into 2-inch cubes

          1 teaspoon ground black pepper

          3 teaspoons kosher salt, divided

          1 yellow onion, chopped

          6 cloves garlic, chopped

          2 tablespoons harissa (Optional)

          2 tablespoons tomato paste

          1 cup dry red wine

          1 (28 ounce) can crushed tomatoes

          1 bay leaf

          1 pound pappardelle pasta, cooked and drained

          grated Parmesan cheese, for serving
          ",
          user: veronique
        )

recipe_fourteen_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702243422/HH-Stella-Winter-Feast-for-frineds-Shin-of-Beef-Ragu-002_trans_NvBQzQNjv4BqEfr_C-RcU6GOW0wNlYS1ZsBhiIYFD-DQ23qyGvgesHk_fdssxi.jpg")
recipe_fourteen.photo.attach(io: recipe_fourteen_photo, filename: "recipe_fourteen.png", content_type: "image/png")
recipe_fourteen.save

          Ingredient.create(
            name: "black pepper",
            unit: "cup
        ",
            quantity: 1,
            recipe: recipe_fourteen
          )

          Ingredient.create(
            name: "oil",
            unit: "cup
        ",
            quantity: 1,
            recipe: recipe_fourteen
          )

          Ingredient.create(
            name: "onion",
            unit: "cup
        ",
            quantity: 1,
            recipe: recipe_fourteen
          )

          Ingredient.create(
            name: "garlic",
            unit: "cup
        ",
            quantity: 1,
            recipe: recipe_fourteen
          )

          Ingredient.create(
            name: "tomatoes",
            unit: "cup
        ",
            quantity: 1,
            recipe: recipe_fourteen
          )

          Ingredient.create(
            name: "red wine",
            unit: "cup
        ",
            quantity: 1,
            recipe: recipe_fourteen
          )

          Ingredient.create(
            name: "cheese",
            unit: "cup
        ",
            quantity: 1,
            recipe: recipe_fourteen
          )

          Ingredient.create(
            name: "beef",
            unit: "cup
        ",
            quantity: 1,
            recipe: recipe_fourteen
          )

          Ingredient.create(
            name: "pasta",
            unit: "cup
        ",
            quantity: 1,
            recipe: recipe_fourteen
          )

# A partir d'ici, photos a changer!

recipe_fifteen = Recipe.new(
  name: "Lasagna soup",
  description: "This incredible lasagna soup tastes exactly like a really good lasagna,
  but is a very rich, very meaty tomato soup. The little bit of extra work you'll do—precooking the noodles,
  then baking them in the oven—is absolutely worth the time and effort. The buttery, baked,
  and toasted noodles that are then added to the soup make this absolutely phenomenal.",
  preparation: "Fill a large pot with lightly salted water and bring to a rolling boil.
  Stir in lasagna noodles and return to a boil. Cook pasta uncovered, stirring occasionally,
  until just flexible, 4 to 5 minutes. Transfer noodles into cold water until cooled; drain very well.
  Preheat the oven to 475 degrees F (245 degrees C). Line a baking sheet with parchment paper,
  and grease parchment with 1 tablespoon olive oil.
  Cut noodles in half lengthwise. Arrange noodles in evenly overlapping rows on the prepared baking sheet.
  Brush with melted butter, and use fingers to rub some butter between the noodles.
  Bake noodles in the preheated oven until they are golden, blistered,
  and are beginning to brown with crispy outside edges.
  Let cool; cut into bite-sized pieces.
  Add 2 tablespoons olive oil to a soup pot, and place over high heat. Add beef and sausage.
  Use a spatula to break up the meat into small pieces; cook without stirring until liquid evaporates and meat begins
  to sizzle in its own fat, then continue to cook and stir until meat begins to brown, about 7 minutes.
  Add onions, garlic, tomato paste, red pepper flakes, dried oregano, black pepper, and kosher salt.
  Cook and stir until onions begin to turn translucent, 3 to 4 minutes.
  Stir in chicken broth, tomato sauce, and water. Bring to a simmer, reduce heat to medium low, and simmer for 45 minutes.
  In a bowl, stir ricotta cheese, mozzarella cheese, and Parmesan cheese together; set aside.
  Increase the heat under soup to medium high; stir in noodle pieces. Cook, stirring, until pasta is tender,
  about 10 minutes. Reduce heat to low, and stir in the 2 tablespoons Italian parsley.",
  user: veronique
)

recipe_fifteen_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702497948/lasagnasoup_lxm5d1.jpg")
recipe_fifteen.photo.attach(io: recipe_fifteen_photo, filename: "recipe_fourteen.png", content_type: "image/png")
recipe_fifteen.save

Ingredient.create(
  name: "olive oil",
  unit: "tablespoon",
  quantity: 2,
  recipe: recipe_fifteen
)

Ingredient.create(
  name: "ground beef",
  unit: "pound",
  quantity: 1,
  recipe: recipe_fifteen
)

Ingredient.create(
  name: "Italian sausage",
  unit: "onces",
  quantity: 6,
  recipe: recipe_fifteen
)

Ingredient.create(
  name: "yellow onion",
  unit: "cup",
  quantity: 1,
  recipe: recipe_fifteen
)

Ingredient.create(
  name: "chicken broth",
  unit: "cups",
  quantity: 4,
  recipe: recipe_fifteen
)

recipe_sixteen = Recipe.new(
  name: "Italian Calzones",
  description: "These calzones are the real deal because there is no tomato sauce inside!
  We eat them at least once a week. Have a bowl of tomato or spaghetti sauce on the table
  for people to top their calzone if desired.",
  preparation: "Make the dough, knead, and let rise.
  Make the filling and chill in the fridge.
  Punch the dough down and divide into two pieces.
  Roll the dough out into circles and fill.
  Fold the dough and use a fork to seal.
  Brush with a beaten egg and bake until golden brown. ",
  user: veronique
)

recipe_sixteen_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702497856/calzone_svhhjs.jpg")
recipe_sixteen.photo.attach(io: recipe_sixteen_photo, filename: "recipe_fourteen.png", content_type: "image/png")
recipe_sixteen.save

Ingredient.create(
  name: "Cheddar cheese",
  unit: "cup",
  quantity: 1,
  recipe: recipe_sixteen
)

Ingredient.create(
  name: "pepperoni",
  unit: "cup",
  quantity: 1,
  recipe: recipe_sixteen
)

Ingredient.create(
  name: "mushrooms",
  unit: "cup",
  quantity: 1,
  recipe: recipe_sixteen
)

Ingredient.create(
  name: "ricotta cheese",
  unit: "cup",
  quantity: 1,
  recipe: recipe_sixteen
)

Ingredient.create(
  name: "basil leaves",
  unit: "tablespoon",
  quantity: 1,
  recipe: recipe_fifteen
)

recipe_seventeen = Recipe.new(
  name: "Mushroom Risotto",
  description: "This savory wild mushroom risotto uses dried chanterelles.
  It's delicious topped with tangy Gorgonzola cheese.",
  preparation: "Cover chanterelle mushrooms with hot water, cover,
  and set aside to soften for 30 minutes. Once soft, remove mushrooms
  from water and chop; discard water.
  Melt butter along with truffle oil in a large saucepan over medium-high heat.
  Add onion, shallot, and garlic; cook and stir two minutes until the onion begins
  to soften. Add fresh mushrooms; continue cooking until mushroom softens and begin
  to release their liquid. Stir in chopped chanterelle mushrooms, and cook 3 minutes more.
  Add Arborio rice; cook and stir for a few minutes until rice looks glossy and
  is well coated with onion mixture. Stir in white wine and cook until nearly evaporated.
  Reduce heat to medium; add 1/3 of the hot chicken stock. Cook and stir until
  chicken stock has been mostly absorbed, about 5 minutes. The risotto should be
  simmering gently while you stir in chicken stock. Add 1/2 of the remaining stock, and stir for 5 minutes more.
  Finally add remaining stock, and continue cooking until risotto is creamy and rice is tender, about 5 minutes more.
  The rice should not be completely soft, but still have a little firmness when you bite into it.
  You can add a little water if needed to cook the rice to this state.
  Remove risotto from the heat, and stir in heavy cream and Gorgonzola cheese.
  Season to taste with salt and pepper, and serve.",
  user: veronique
)

recipe_seventeen_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702497976/risotto_rrjvfk.jpg")
recipe_seventeen.photo.attach(io: recipe_seventeen_photo, filename: "recipe_fourteen.png", content_type: "image/png")
recipe_seventeen.save

Ingredient.create(
  name: "chanterelle mushrooms",
  unit: "ounces",
  quantity: 2,
  recipe: recipe_seventeen
)
Ingredient.create(
  name: "butter",
  unit: "tablespoons",
  quantity: 2,
  recipe: recipe_seventeen
)
Ingredient.create(
  name: "onion",
  unit: "cup",
  quantity: 1,
  recipe: recipe_seventeen
)
Ingredient.create(
  name: "Arborio rice",
  unit: "ounces",
  quantity: 12,
  recipe: recipe_seventeen
)
Ingredient.create(
  name: "white wine",
  unit: "cup",
  quantity: 1,
  recipe: recipe_seventeen
)

recipe_eighteen = Recipe.new(
  name: "Italian BLT",
  description: "This sandwich is a nod to the classic BLT,
  with a touch of pesto and ricotta to bring an elevated touch.",
  preparation: "Slice bread on the diagonal to get 12 slices.
  Brush each slice of bread with olive oil. Mix Italian seasoning and garlic granules together;
  sprinkle over bread slices.
  Heat a grill pan over medium-high heat, and place bread oil-side-down on the pan until grill marks form,
  about 3 minutes. Remove bread to a board.
  Mix spinach and basil leaves together. Divide leaves evenly over 6 slices of bread; layer these 6 bread
  slices with equal amounts prosciutto, sliced tomato, and sliced mozzarella.
  Stir pesto and ricotta together in a small bowl. Spread a generous 1 tablespoon mixture onto remaining 6
  bread slices, and place on top of each sandwich.",
  user: veronique
)

recipe_eighteen_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702497941/italian-blt-sl-352568-x_v3awge.jpg")
recipe_eighteen.photo.attach(io: recipe_eighteen_photo, filename: "recipe_fourteen.png", content_type: "image/png")
recipe_eighteen.save

Ingredient.create(
  name: "italian bread",
  unit: "loaf",
  quantity: 1,
  recipe: recipe_eighteen
)
Ingredient.create(
  name: "spinach",
  unit: "cups",
  quantity: 2,
  recipe: recipe_eighteen
)
Ingredient.create(
  name: "tomatoes",
  unit: "cups",
  quantity: 2,
  recipe: recipe_eighteen
)
Ingredient.create(
  name: "fresh mozzarella cheese",
  unit: "ounces",
  quantity: 8,
  recipe: recipe_eighteen
)

recipe_nineteen = Recipe.new(
  name: "Gnocchi Pomodoro",
  description: "Fluffy potato dumplings sautéed for a crispy exterior and tender
  interior with a simple tomato sauce. I used the oil from the marinated mozzarella
  ball container for the sauce with great success.",
  preparation: "Open marinated mozzarella balls and measure out 1/4 cup of the oil.
  Pour oil into a heavy skillet over medium-high heat. Cook gnocchi in batches in the
  hot oil until golden and heated through. Divide gnocchi evenly amongst 4 gratin dishes.
  Add garlic and red chili flakes to the oil in the same skillet. Cook until garlic
  is fragrant, about 30 seconds. Stir in salt and sugar. Pour in tomatoes. Use a wooden
  spoon to break up and crush the tomatoes
  Bring sauce to a boil, reduce heat, cover and simmer tomatoes for 15 minutes.
  Set an oven rack about 6 inches from the heat source and preheat the oven's broiler.
  Taste sauce and adjust seasonings if desired. Spoon tomato sauce over the gnocchi.
  Top each dish with 3 marinated mozzarella balls and set on a baking sheet.
  Add baking sheet to oven and broil until mozzarella balls are melted and golden
  browned, 3 to 5 minutes. Garnish with parsley or basil if desired and serve immediately.",
  user: veronique
)

recipe_nineteen_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702498490/Gnocchi-pomodoro-1c5c238_m53ose.jpg")
recipe_nineteen.photo.attach(io: recipe_nineteen_photo, filename: "recipe_fourteen.png", content_type: "image/png")
recipe_nineteen.save

Ingredient.create(
  name: "gnocchi",
  unit: "ounces",
  quantity: 12,
  recipe: recipe_nineteen
)

Ingredient.create(
  name: "Italian plum tomatoes",
  unit: "ounce",
  quantity: 1,
  recipe: recipe_nineteen
)

Ingredient.create(
  name: "mozzarella balls",
  unit: "ounces",
  quantity: 8,
  recipe: recipe_nineteen
)

Ingredient.create(
  name: "garlic",
  unit: "cloves",
  quantity: 3,
  recipe: recipe_nineteen
)

recipe_twenty = Recipe.new(
  name: "Polenta",
  description: "Polenta is nothing more than coarsely ground cornmeal.
  The classic ratio is 1 part polenta to 4 parts water, but I like to
  measure the polenta just a little scant of a full cup. I often use chicken broth
  instead of water. It's a great base for any kind of saucy meat or mushroom ragout.",
  preparation: "Bring water and salt to a boil in a large saucepan; pour polenta slowly
  into boiling water, whisking constantly until there are no lumps.
  Reduce heat to low and simmer, whisking often, until polenta starts to thicken,
  about 5 minutes. Polenta mixture should still be slightly loose. Cover and cook for 30 minutes,
  whisking every 5 to 6 minutes. When polenta is too thick to whisk, stir with a wooden spoon.
  Polenta is done when texture is creamy and the individual grains are tender.
  Turn off heat and gently stir 2 tablespoons butter into polenta until butter partially melts;
  mix 1/2 cup Parmigiano-Reggiano cheese into polenta until cheese has melted. Cover and let stand
  for 5 minutes to thicken.
  Stir polenta and transfer to a serving bowl. Top polenta with remaining 1 tablespoon butter and
  about 1 tablespoon freshly grated Parmigiano-Reggiano cheese for garnish.",
  user: veronique
)

recipe_twenty_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702497969/polenta_iibcpg.jpg")
recipe_twenty.photo.attach(io: recipe_twenty_photo, filename: "recipe_fourteen.png", content_type: "image/png")
recipe_twenty.save

Ingredient.create(
  name: "Parmigiano-Reggiano",
  unit: "cup",
  quantity: 1,
  recipe: recipe_twenty
)

Ingredient.create(
  name: "butter",
  unit: "tablespoons",
  quantity: 3,
  recipe: recipe_twenty
)

Ingredient.create(
  name: "polenta",
  unit: "cup",
  quantity: 1,
  recipe: recipe_twenty
)

Ingredient.create(
  name: "water",
  unit: "cups",
  quantity: 4,
  recipe: recipe_twenty
)

recipe_twenty_one = Recipe.new(
  name: "Pesto Pasta",
  description: "Pesto pasta is easy to make and full of flavor. It tastes good hot or cold!",
  preparation: "Fill a large pot with lightly salted water and bring to a rolling boil.
  Stir in pasta and return to a boil. Cook pasta uncovered, stirring occasionally,
  until tender yet firm to the bite, about 8 to 10 minutes. Drain and transfer into a large bowl.
  Meanwhile, heat oil in a frying pan over medium-low heat. Add onion; cook and stir
  until softened, about 3 minutes. Stir in pesto, salt, and pepper until warmed through.
  Add pesto mixture to hot pasta; stir in grated cheese and toss well to coat.",
  user: veronique
)

recipe_twenty_one_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702497955/pasta-al-pesto-24-1_vtmaq4.jpg")
recipe_twenty_one.photo.attach(io: recipe_twenty_one_photo, filename: "recipe_fourteen.png", content_type: "image/png")
recipe_twenty_one.save

Ingredient.create(
  name: "pasta",
  unit: "ounces",
  quantity: 16,
  recipe: recipe_twenty_one
)

recipe_twenty_two = Recipe.new(
  name: "Tiramisu",
  description: "Tiramisu is a classic Italian layered dessert that's easy to make
  at home with coffee-soaked ladyfingers, a creamy mascarpone custard, and whipped cream.
  Dust the top of the tiramisu with cocoa powder for an impressive no-bake dessert!",
  preparation: "Whisk egg yolks and sugar together in a medium saucepan until well blended.
  Whisk in milk and cook over medium heat, stirring constantly, until mixture comes to a boil.
  Overhead of an egg yolk and milk mixture being stirred with a spoon in a sauce pan.
  DOTDASH MEREDITH FOOD STUDIOS
  Boil gently for 1 minute, then remove from the heat and allow to cool slightly.
  Cover tightly and chill in the refrigerator for 1 hour.
  Beat cream and vanilla in a medium bowl with an electric mixer until stiff peaks form.
  Cream and vanilla in a medium bowl that has been mixed by and electric mixer.
  DOTDASH MEREDITH FOOD STUDIOS
  Remove egg yolk mixture from the refrigerator; add mascarpone cheese and whisk until smooth.
  Combine coffee and rum in a small bowl. Split ladyfingers in half lengthwise and drizzle with the coffee mixture.
  Arrange 1/2 of the soaked ladyfingers in the bottom of a 7x11-inch dish.
  Halved ladyfingers tightly packed in a glass baking dish.
  DOTDASH MEREDITH FOOD STUDIOS
  Spread 1/2 of the mascarpone mixture over the ladyfingers, then spread 1/2 of the whipped cream over top.
  Repeat layers once more.
  Ladyfingers in a glass baking dish with a mascarpone mixture and whipped cream on top.
  DOTDASH MEREDITH FOOD STUDIOS
  Sprinkle cocoa powder over top
  Cover and refrigerate until set, 4 to 6 hours.
  Enjoy!",
  user: veronique
)

recipe_twenty_two_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702434067/development/caigvz40ixsxo8zl68evuvd948zp.jpg")
recipe_twenty_two.photo.attach(io: recipe_twenty_two_photo, filename: "recipe_fourteen.png", content_type: "image/png")
recipe_twenty_two.save

Ingredient.create(
  name: "egg yolks",
  unit: "grams",
  quantity: 40,
  recipe: recipe_twenty_two
)

Ingredient.create(
  name: "white sugar",
  unit: "cup",
  quantity: 1,
  recipe: recipe_twenty_two
)

Ingredient.create(
  name: "milk",
  unit: "cup",
  quantity: 1,
  recipe: recipe_twenty_two
)

Ingredient.create(
  name: "mascarpone cheese",
  unit: "pound",
  quantity: 1,
  recipe: recipe_twenty_two
)

recipe_twenty_three = Recipe.new(
  name: "Four Cheese Ravioli",
  description: "This ravioli recipe includes a homemade pesto-Alfredo sauce and marinara.
  I wanted to recreate the ravioli dish that you get at Maggiano's Italian restaurant and
  it turned out great! Don't be intimidated by the large list of ingredients, it is well worth it.",
  preparation: "Mound flour and salt together on a work surface and form a well. Beat eggs, water,
  and olive oil in a bowl. Pour 1/2 of the egg mixture into the well. Begin mixing egg and flour with
  one hand; use your other hand to keep the flour mound steady. Add remaining egg mixture and knead to form a dough.
  Knead dough until smooth, 8 to 10 minutes; add more flour if the dough is too sticky. Form dough into
  a ball and wrap tightly with plastic. Refrigerate for 1 hour.
  While the dough is resting, prepare the ravioli filling: Mix ricotta cheese, cream cheese,
  mozzarella cheese, provolone cheese, egg, and parsley until well combined. Set the filling aside.
  Heat 2 tablespoons of olive oil in a skillet over medium heat. Stir in crushed garlic and
  pesto sauce and cook for one minute. Stir in heavy cream; increase the heat to high and bring to a boil.
  Reduce the heat and simmer for 5 minutes. Whisk in Parmesan cheese until melted.
  Remove the pan from the heat and keep warm.
  Meanwhile, warm marinara sauce over medium-low heat in a separate saucepan.
  Preheat the oven to 375 degrees F (190 degrees C). Beat egg and 1 tablespoon of water together
  in a small bowl to make the egg wash.
  Roll out the pasta dough into thin sheets no thicker than a nickel. To assemble the ravioli,
  brush the egg wash over a sheet of pasta. Drop cheese filling in 1-teaspoon portions onto the dough, 1-inch apart.
  Cover the filling with the top sheet of pasta; use your fingers to press around each portion
  of filling, making the seal as airtight as possible. Cut out individual ravioli with a knife
  or pizza cutter. Use your fingers to seal the edges.
  Fill a large pot with lightly salted water and bring to a rolling boil over high heat. Stir
  in the ravioli and return to a boil. Cook uncovered, stirring occasionally, until the ravioli
  float to the top and the filling is hot, 4 to 8 minutes. Drain well.
  Grease a baking sheet. Place the cooked ravioli on the baking sheet and bake in the preheated
  oven until brown, about 4 minutes.
  To serve, divide ravioli between four warmed serving bowls. Drizzle marinara sauce on top,
  followed by cream sauce..
  Enjoy!",
  user: veronique
)

recipe_twenty_three_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702497906/four-cheese-ravioli-self-proclaimed-foodie-3_vv6fnk.jpg")
recipe_twenty_three.photo.attach(io: recipe_twenty_three_photo, filename: "recipe_fourteen.png", content_type: "image/png")
recipe_twenty_three.save

Ingredient.create(
  name: "ricotta cheese",
  unit: "ounces",
  quantity: 8,
  recipe: recipe_twenty_three
)

Ingredient.create(
  name: "cream cheese",
  unit: "ounces",
  quantity: 4,
  recipe: recipe_twenty_three
)

Ingredient.create(
  name: "cream",
  unit: "cups",
  quantity: 2,
  recipe: recipe_twenty_three
)

Ingredient.create(
  name: "Raviolis",
  unit: "ounces",
  quantity: 12,
  recipe: recipe_twenty_three
)

recipe_twenty_four = Recipe.new(
  name: "Zucchini Spaghetti",
  description: "After listening to Stanley Tucci lose his mind about this pasta and calling
  it life-changing and one of the best things he's ever eaten, I decided I'd give it a try.
  The results were amazing and the key to getting the toasted sweet taste of the zucchini was deep-frying it!",
  preparation: "Place sunflower oil in a deep fryer and heat to 350 degrees F (175 degrees C).
  Slice zucchini into 1/8-inch rounds.
  Add some zucchini to the hot oil and deep-fry until lightly browned, 4 to 5 minutes.
  Transfer to a single layer on paper towels to drain and repeat to cook remaining zucchini.
  Let zucchini cool to room temperature.
  Transfer cooled zucchini to a bowl. Cover and refrigerate, 8 hours to overnight.
  Bring a large pot of lightly salted water to a boil. Cook spaghetti in the boiling water,
  stirring occasionally, until it's 2 minutes away from being tender yet firm to the bite, 9 to 10 minutes.
  As you are cooking the spaghetti, heat olive oil in a skillet over medium heat. Add zucchini
  and salt and cook, stirring occasionally, until it starts to release juices, soften,
  and break down, 3 to 5 minutes. Add a couple splashes of the pasta water to the zucchini,
  but don't overdo it. Break zucchini into small pieces with the edge of a spoon or spatula.
  Reduce heat to low and toss in basil and butter; stir until butter melts.
  Grab spaghetti with tongs and transfer it right into the sauce; stir until coated. Mix in
  Pecorino Romano and Parmigiano-Reggiano cheeses. Add a final splash of pasta water and adjust salt if needed.
  Serve with more grated cheese and fresh basil.",
  user: veronique
)

recipe_twenty_four_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702497989/spaguetti_ttuvhg.jpg")
recipe_twenty_four.photo.attach(io: recipe_twenty_four_photo, filename: "recipe_fourteen.png", content_type: "image/png")
recipe_twenty_four.save

Ingredient.create(
  name: "zucchini",
  unit: "cups",
  quantity: 6,
  recipe: recipe_twenty_four
)

Ingredient.create(
  name: "spaghetti",
  unit: "ounces",
  quantity: 4,
  recipe: recipe_twenty_four
)

Ingredient.create(
  name: "olive oil",
  unit: "tablespoons",
  quantity: 2,
  recipe: recipe_twenty_four
)

Ingredient.create(
  name: "unsalted butter",
  unit: "tablespoons",
  quantity: 2,
  recipe: recipe_twenty_four
)

recipe_twenty_five = Recipe.new(
  name: "Pasta Salad",
  description: "A homemade Italian pasta salad dressing takes this simple pasta
  salad loaded with veggies, cheese, pepperoni, and olives to a whole new level!
  Serve it right away or make it ahead for packed lunches, picnics, or summer barbecues.",
  preparation: "Gather all ingredients.
  Overhead of pasta salad ingredients in various bowls and containers.
  Bring a large pot of lightly salted water to a boil. Add rotini and
  cook until tender yet firm to the bite, 8 to 10 minutes.
  Drain, rinse with cold water, and drain again.
  Transfer drained, cooked pasta to a large bowl. Add pepperoni, provolone cheese,
  red onion, cucumber, bell peppers, olives, parsley, and Parmesan cheese.
  Overhead of unmixed pasta salad ingredients in a glass bowl.
  Mix olive oil, vinegar, garlic, basil, oregano, ground mustard, salt, and pepper
  for dressing in a jar with a lid. Seal the jar, and shake until well combined.
  Overhead of pasta salad dressing ingredients in various bowls and cups.
  Pasta salad dressing sitting in a mason jar.
  Pour dressing over the pasta salad; toss until well coated. Serve immediately, or
  cover and chill in the refrigerator for up to 8 hours before serving.",
  user: veronique
)

recipe_twenty_five_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702497869/Creamy-pasta-salad-recipe-3-2_usz0rn.jpg")
recipe_twenty_five.photo.attach(io: recipe_twenty_five_photo, filename: "recipe_fourteen.png", content_type: "image/png")
recipe_twenty_five.save

Ingredient.create(
  name: "tri-color rotini pasta",
  unit: "ounces",
  quantity: 8,
  recipe: recipe_twenty_five
)

Ingredient.create(
  name: "pepperoni sausage",
  unit: "ounces",
  quantity: 6,
  recipe: recipe_twenty_five
)

Ingredient.create(
  name: "cucumber",
  unit: "cup",
  quantity: 1,
  recipe: recipe_twenty_five
)

Ingredient.create(
  name: "green bell pepper",
  unit: "cup",
  quantity: 1,
  recipe: recipe_twenty_five
)

puts "creating 5 plannings"

Planning.create(
  date: Date.today,
  recipe: recipe_three,
  user: veronique
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
asiatique = Category.create(name: "Asian food")
lunch = Category.create(name: "Lunch&Diner")
fast = Category.create(name: "Fast")
dessert = Category.create(name: "Dessert")
halal = Category.create(name: "Halal")
gluten = Category.create(name: "Gluten free")


italian_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701551146/l-intro-1643403830_waxgzh.jpg")
italian.photo.attach(io: italian_photo, filename: "italian.png", content_type: "image/png")

healthy_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701293600/healthy_frosqp.jpg")
healthy.photo.attach(io: healthy_photo, filename: "healthy.png", content_type: "image/png")

asiatique_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701550849/Asian-Street-Kitchen-Festival-2019-min_kvrsvq.jpg")
asiatique.photo.attach(io: asiatique_photo, filename: "asiatique.png", content_type: "image/png")

lunch_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701551821/Homemade-Lunch-1-horiz_n3cqth.jpg")
lunch.photo.attach(io: lunch_photo, filename: "lunch.png", content_type: "image/png")

fast_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701551421/l-intro-1642708415_mkmtmu.jpg")
fast.photo.attach(io: fast_photo, filename: "fast.png", content_type: "image/png")

dessert_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1701551589/2148727_w472h265c1cx1311cy572cxt0cyt0cxb2622cyb1143_m1rleu.webp")
dessert.photo.attach(io: dessert_photo, filename: "dessert.png", content_type: "image/png")

halal_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702239444/halal_fcn7ih.jpg")
halal.photo.attach(io: halal_photo, filename: "halal.png", content_type: "image/png")

gluten_photo = URI.open("https://res.cloudinary.com/du9ruv4nu/image/upload/v1702239562/sans_gluten_zdbslr.webp")
gluten.photo.attach(io: gluten_photo, filename: "gluten.png", content_type: "image/png")

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
RecipeCategory.create(recipe: recipe_eleven, category: lunch)
RecipeCategory.create(recipe: recipe_eleven, category: gluten)
RecipeCategory.create(recipe: recipe_twelve, category: halal)
RecipeCategory.create(recipe: recipe_twelve, category: lunch)
RecipeCategory.create(recipe: recipe_thirteen, category: italian)
RecipeCategory.create(recipe: recipe_thirteen, category: lunch)
RecipeCategory.create(recipe: recipe_fourteen, category: lunch)
RecipeCategory.create(recipe: recipe_fourteen, category: italian)
RecipeCategory.create(recipe: recipe_fifteen, category: italian)
RecipeCategory.create(recipe: recipe_sixteen, category: italian)
RecipeCategory.create(recipe: recipe_seventeen, category: italian)
RecipeCategory.create(recipe: recipe_eighteen, category: italian)

RecipeCategory.create(recipe: recipe_twenty, category: italian)
RecipeCategory.create(recipe: recipe_twenty_one, category: italian)
RecipeCategory.create(recipe: recipe_twenty_two, category: italian)
RecipeCategory.create(recipe: recipe_twenty_three, category: italian)
RecipeCategory.create(recipe: recipe_twenty_four, category: italian)
RecipeCategory.create(recipe: recipe_twenty_five, category: italian)
