# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "iamcatdad", first_name: "Andy", last_name: "Maskiell", location: "Boston", city: "MA", password: "catz4lyf3")

cat1 = Cat.create(name: "Grandma", nickname: "Gram", age: 16, breed: "Tuxedo", info: "So old and goofy", location: "Boston", city: "MA", user_id: 1)
cat2 = Cat.create(name: "Kirito", nickname: "Kiki", age: 3, breed: "Black medium fur", info: "He's a little shit, but still really cute", location: "Boston", city: "MA", user_id: 1)
cat3 = Cat.create(name: "", nickname: "", age: , breed: "", info: "", location: "", state: "", user_id: )
cat4 = Cat.create(name: "", nickname: "", age: , breed: "", info: "", location: "", state: "", user_id: )
cat5 = Cat.create(name: "", nickname: "", age: , breed: "", info: "", location: "", state: "", user_id: )
cat6 = Cat.create(name: "", nickname: "", age: , breed: "", info: "", location: "", state: "", user_id: )

dog1 = Cat.create(name: "Snoopy", nickname: "Snoopz", age: 5, breed: "Beagle", info: "Sly but small", location: "", state: "", user_id: )
dog2 = Cat.create(name: "", nickname: "", age: , breed: "", info: "", location: "", state: "", user_id: )
dog3 = Cat.create(name: "", nickname: "", age: , breed: "", info: "", location: "", state: "", user_id: )
dog4 = Cat.create(name: "", nickname: "", age: , breed: "", info: "", location: "", state: "", user_id: )
dog5 = Cat.create(name: "", nickname: "", age: , breed: "", info: "", location: "", state: "", user_id: )
dog6 = Cat.create(name: "", nickname: "", age: , breed: "", info: "", location: "", state: "", user_id: )
