# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

address1 = Address.create(street1: "29 Colburne Rd.", street2: "Apt. 2", city: "Brighton", state: "MA", zip: "02135", user_id: 1)
address2 = Address.create(street1: "", street2: "", city: "Rochester", state: "NY", zip: "14618", user_id: 2)
address3 = Address.create(street1: "", street2: "", city: "Chagrin", state: "OH", zip: "44022", user_id: 3)
address4 = Address.create(street1: "", street2: "", city: "Saint Paul", state: "MN", zip: "55101", user_id: 4)
address5 = Address.create(street1: "250 Florida St.", street2: "", city: "San Francisco", state: "CA", zip: "94103", shelter_id: 1)
address6 = Address.create(street1: "200 Centre St.", street2: "", city: "New York", state: "NY", zip: "10013", shelter_id: 2)
address7 = Address.create(street1: "142 Kindness Ct.", street2: "", city: "Burlington", state: "VT", zip: "05403", shelter_id: 3)
address8 = Address.create(street1: "99 Victor Rd.", street2: "", city: "Fairport", state: "NY", zip: "14450", shelter_id: 4)
address9 = Address.create(street1: "1845 Pontius Ave.", street2: "", city: "Los Angeles", state: "CA", zip: "90025", shelter_id: 5)
address10 = Address.create(street1: "629 Oakland Park Ave.", street2: "", city: "Columbus (London)", state: "OH", zip: "43214", shelter_id: 6)

shelter1 = Shelter.create(name: "San Francisco SPCA", address_id: 5)
shelter2 = Shelter.create(name: "Animal Haven Shelter", address_id: 6)
shelter3 = Shelter.create(name: "Humane Society of Chittenden County", address_id: 7)
shelter4 = Shelter.create(name: "Lollypop Farm Adoption Center",  address_id: 8)
shelter5 = Shelter.create(name: "NKLA Pet Adoption Center", address_id: 9)
shelter6 = Shelter.create(name: "Pets Without Parents", address_id: 10)

user1 = User.create(first_name: "Andrew", last_name: "Maskiell", username: "iamcatdad", email: "maskiella@gmail.com", password: "catz4lyf3", address_id: 1)
user2 = User.create(first_name: "Brad", last_name: "Demarest", username: "bradfizzle", email: "bradfizzle@gmail.com", password: "iheartplatez", address_id: 2)
user3 = User.create(first_name: "Calvin", last_name: "Watterson", username: "comiccalvin", email: "calvin@gmail.com", password: "snowballfightz", address_id: 3)
user4 = User.create(first_name: "Charlie", last_name: "Brown", username: "chuckyb", email: "charles.brown@gmail.com", password: "goodgrief", address_id: 4)

employee1 = Employee.create(first_name: "Brittany", last_name: "Lasch", username: "kittymomma", email: "fands@gmail.com", password: "fands43va", shelter_id: 6)
# employee2 = Employee.create(first_name: "", last_name: "", username: "", email: "", password: "", shelter_id: )
# employee3 = Employee.create(first_name: "", last_name: "", username: "", email: "", password: "", shelter_id: )
# employee4 = Employee.create(first_name: "", last_name: "", username: "", email: "", password: "", shelter_id: )

cat1 = Pet.create(name: "Grandma", nickname: "Gram", animal: "Cat", age: 16, breed: "Tuxedo", info: "So old and goofy", user_id: 1)
cat2 = Pet.create(name: "Kirito", nickname: "Kiki", animal: "Cat", age: 3, breed: "Black medium fur", info: "He's a little shit, but still really cute", user_id: 1)
cat3 = Pet.create(name: "Garfield", nickname: "Gargarbinks", animal: "Cat", age: 10, breed: "Orange Fatty", info: "Eats way too much and is constantly patronizing", shelter_id: 1)
cat4 = Pet.create(name: "Larry", animal: "Cat", age: 11, breed: "Sphinx", info: "Real sweetheart", shelter_id: 2)
cat5 = Pet.create(name: "Hobbes", nickname: "Hobbikins", animal: "Cat", age: 2, breed: "Faux-Tiger", info: "Not real? But still the greatest friend a boy could have", user_id: 3)
cat6 = Pet.create(name: "Petunia", nickname: "Tunerz", animal: "Cat", age: 4, breed: "Tortie", info: "Spunky little cat, who also loves to snuggle", shelter_id: 3)

dog1 = Pet.create(name: "Snoopy", nickname: "Snoopz", animal: "Dog", age: 5, breed: "Beagle", info: "Sly but small", user_id: 4)
dog2 = Pet.create(name: "Lily", nickname: "Lilyyyyyyyy", animal: "Dog", age: 3, breed: "Black Lab mix", info: "She's a real goofball, but she's been a great companion", user_id: 2)
dog3 = Pet.create(name: "Pooper", nickname: "Poopz", animal: "Dog", age: 8, breed: "Bulldog", info: "Kinda stinky, but playful", shelter_id: 4)
dog4 = Pet.create(name: "Mr. Peanut Butter", nickname: "Dumbo", animal: "Dog", age: 5, breed: "Golden Lab", info: "Waaaaaaaaay too much energy", shelter_id: 5)
dog5 = Pet.create(name: "Scrouge", nickname: "Ebby", animal: "Dog", age: 7, breed: "Pug", info: "Lovable, despite his grumpy appearance", shelter_id: 6)
dog6 = Pet.create(name: "Killer", nickname: "Cupcake", animal: "Dog", age: 11, breed: "Poodle", info: "Don't judge a book by its cover", shelter_id: 2)





# user1.pets << cat1 << cat2
# user2.pets << dog2
# user3.pets << cat5
# user4.pets << dog1
#
# shelter1.pets << cat3
# shelter2.pets << cat4 << dog6
# shelter3.pets << cat6
# shelter4.pets << dog3
# shelter5.pets << dog4
# shelter6.pets << dog5
