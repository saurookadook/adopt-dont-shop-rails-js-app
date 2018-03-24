# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "iamcatdad", email: "maskiella@gmail.com", first_name: "Andy", last_name: "Maskiell", city: "Boston", state: "MA", password: "catz4lyf3")
user2 = User.create(username: "bradfizzle", email: "bradfizzle@gmail.com", first_name: "Brad", last_name: "Demarest", city: "Rochester", state: "NY", password: "iheartplatez")
user3 = User.create(username: "comiccalvin", email: "calvin@gmail.com", first_name: "Calvin", last_name: "Watterson", city: "Chagrin Falls", state: "OH", password: "snowballfightz")
user4 = User.create(username: "chuckyb", email: "charles.brown@gmail.com", first_name: "Charlie", last_name: "Brown", city: "Saint Paul", state: "MN", password: "goodgrief")

cat1 = Pet.create(name: "Grandma", nickname: "Gram", animal: "Cat", age: 16, breed: "Tuxedo", info: "So old and goofy", city: "Boston", state: "MA", user_id: 1)
cat2 = Pet.create(name: "Kirito", nickname: "Kiki", animal: "Cat", age: 3, breed: "Black medium fur", info: "He's a little shit, but still really cute", city: "Boston", state: "MA", user_id: 1)
cat3 = Pet.create(name: "Garfield", nickname: "Gargarbinks", animal: "Cat", age: 10, breed: "Orange Fatty", info: "Eats way too much and is constantly patronizing", shelter: "San Francisco SPCA", city: "San Francisco", state: "CA")
cat4 = Pet.create(name: "Larry", animal: "Cat", age: 11, breed: "Sphinx", info: "Real sweetheart", shelter: "Animal Haven Shelter", city: "New York", state: "NY")
cat5 = Pet.create(name: "Hobbes", nickname: "Hobbikins", animal: "Cat", age: 2, breed: "Faux-Tiger", info: "Not real? But still the greatest friend a boy could have", city: "Chagrin Falls", state: "OH", user_id: 3)
cat6 = Pet.create(name: "Petunia", nickname: "Tunerz", animal: "Cat", age: 4, breed: "Tortie", info: "Spunky little cat, who also loves to snuggle", shelter: "Humane Society of Chittenden County", city: "Burlington", state: "VT")

dog1 = Pet.create(name: "Snoopy", nickname: "Snoopz", animal: "Dog", age: 5, breed: "Beagle", info: "Sly but small", city: "Saint Paul", state: "MN", user_id: 4)
dog2 = Pet.create(name: "Lily", nickname: "Lilyyyyyyyy", animal: "Dog", age: 3, breed: "Black Lab mix", info: "She's a real goofball, but she's been a great companion", city: "Rochester", state: "NY", user_id: 2)
dog3 = Pet.create(name: "Pooper", nickname: "Poopz", animal: "Dog", age: 8, breed: "Bulldog", info: "Kinda stinky, but playful", shelter: "Lollypop Farm Adoption Center", city: "Rochester", state: "NY")
dog4 = Pet.create(name: "Mr. Peanut Butter", nickname: "Dumbo", animal: "Dog", age: 5, breed: "Golden Lab", info: "Waaaaaaaaay too much energy", shelter: "NKLA Pet Adoption Center", city: "Los Angeles", state: "CA")
dog5 = Pet.create(name: "Scrouge", nickname: "Ebby", animal: "Dog", age: 7, breed: "Pug", info: "Lovable, despite his grumpy appearance", shelter: "Pets Without Parents", city: "London", state: "OH")
dog6 = Pet.create(name: "Killer", nickname: "Cupcake", animal: "Dog", age: 11, breed: "Poodle", info: "Don't judge a book by its cover", shelter: "Animal Haven Shelter", city: "New York", state: "NY")
