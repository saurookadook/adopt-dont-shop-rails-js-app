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

cat1 = Cat.create(name: "Grandma", nickname: "Gram", age: 16, breed: "Tuxedo", info: "So old and goofy", city: "Boston", state: "MA", user_id: 1)
cat2 = Cat.create(name: "Kirito", nickname: "Kiki", age: 3, breed: "Black medium fur", info: "He's a little shit, but still really cute", city: "Boston", state: "MA", user_id: 1)
cat3 = Cat.create(name: "Garfield", nickname: "Gargarbinks", age: 10, breed: "Orange Fatty", info: "Eats way too much and is constantly patronizing", shelter: "", city: "San Francisco", state: "CA")
cat4 = Cat.create(name: "Larry", age: 11, breed: "Sphinx", info: "Real sweetheart", shelter: "", city: "New York", state: "NY")
cat5 = Cat.create(name: "Hobbes", nickname: "Hobbikins", age: 2, breed: "Faux-Tiger", info: "Not real? But still the greatest friend a boy could have", city: "Chagrin Falls", state: "OH", user_id: 3)
cat6 = Cat.create(name: "Petunia", nickname: "Tunerz", age: 4, breed: "Tortie", info: "Spunky little cat, who also loves to snuggle", shelter: "", city: "Burlington", state: "VT")

dog1 = Dog.create(name: "Snoopy", nickname: "Snoopz", age: 5, breed: "Beagle", info: "Sly but small", city: "", state: "", user_id: 4)
dog2 = Dog.create(name: "Luna", nickname: "Lulu", age: 3, breed: "Black Lab mix", info: "She's a real goofball, but she's been a great companion", city: "Rochester", state: "NY", user_id: 2)
dog3 = Dog.create(name: "Pooper", nickname: "", age: , breed: "", info: "", shelter: "", city: "", state: "", user_id: )
dog4 = Dog.create(name: "Mr. Peanut Butter", nickname: "", age: , breed: "", info: "", shelter: "", city: "", state: "", user_id: )
dog5 = Dog.create(name: "Scrouge", nickname: "", age: , breed: "", info: "", shelter: "", city: "", state: "", user_id: )
dog6 = Dog.create(name: "Killer", nickname: "", age: , breed: "Poodle", info: "", shelter: "", city: "", state: "", user_id: )
