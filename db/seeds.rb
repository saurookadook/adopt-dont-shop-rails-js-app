# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

address1 = Address.create(street1: "29 Colburne Rd.", street2: "Apt. 2", city: "Brighton", state: "MA", zip: "02135", resident_id: 1, resident_type: "User")
address2 = Address.create(street1: "", street2: "", city: "Rochester", state: "NY", zip: "14618", resident_id: 2, resident_type: "User")
address3 = Address.create(street1: "", street2: "", city: "Chagrin", state: "OH", zip: "44022", resident_id: 3, resident_type: "User")
address4 = Address.create(street1: "", street2: "", city: "Saint Paul", state: "MN", zip: "55101", resident_id: 4, resident_type: "User")
address5 = Address.create(street1: "250 Florida St.", street2: "", city: "San Francisco", state: "CA", zip: "94103", resident_id: 5, resident_type: "Shelter")
address6 = Address.create(street1: "200 Centre St.", street2: "", city: "New York", state: "NY", zip: "10013", resident_id: 6, resident_type: "Shelter")
address7 = Address.create(street1: "142 Kindness Ct.", street2: "", city: "Burlington", state: "VT", zip: "05403", resident_id: 7, resident_type: "Shelter")
address8 = Address.create(street1: "99 Victor Rd.", street2: "", city: "Fairport", state: "NY", zip: "14450", resident_id: 8, resident_type: "Shelter")
address9 = Address.create(street1: "1845 Pontius Ave.", street2: "", city: "Los Angeles", state: "CA", zip: "90025", resident_id: 9, resident_type: "Shelter")
address10 = Address.create(street1: "629 Oakland Park Ave.", street2: "", city: "Columbus (London)", state: "OH", zip: "43214", resident_id: 10, resident_type: "Shelter")
address11 = Address.create(street1: "2700 Toomey Ave.", street2: "", city: "Charlotte", state: "NC", zip: "28203", resident_id: 11, resident_type: "Shelter")
address12 = Address.create(street1: "2144 N. Wood Street", street2: "", city: "Chicago", state: "IL", zip: "60614", resident_id: 12, resident_type: "Shelter")
address13 = Address.create(street1: "2061 15th Ave W", street2: "", city: "Seattle", state: "WA", zip: "98119", resident_id: 13, resident_type: "Shelter")
address14 = Address.create(street1: "1067 NE Columbia Blvd.", street2: "", city: "Portland", state: "OR", zip: "97211", resident_id: 14, resident_type: "Shelter")

shelter1 = Shelter.new(name: "San Francisco SPCA", email: "adoptions@sfpca.org", phone_number: "415-522-3500")
shelter1.address = address5
shelter1.save

shelter2 = Shelter.new(name: "Animal Haven Shelter", phone_number: "212-274-8511")
shelter2.address = address6
shelter2.save

shelter3 = Shelter.new(name: "Humane Society of Chittenden County", email: "bestfriends@chittendenhumane.org", phone_number: "802-862-0135")
shelter3.address = address7
shelter3.save

shelter4 = Shelter.new(name: "Lollypop Farm Adoption Center", email: "info@lollypop.org", phone_number: "585-223-1330")
shelter4.address = address8
shelter4.save

shelter5 = Shelter.new(name: "NKLA Pet Adoption Center", email: "bestfriends@bestfriends.org", phone_number: "424-208-8840")
shelter5.address = address9
shelter5.save

shelter6 = Shelter.new(name: "Pets Without Parents", email: "pets@petswithoutparents.net", phone_number: "614-267-7297")
shelter6.address = address10
shelter6.save

shelter7 = Shelter.new(name: "Humane Society of Charlotte", email: "adoptioncenter@humanecharlotte.org", phone_number: "704-377-0534")
shelter7.address = address11
shelter7.save

shelter8 = Shelter.new(name: "One Tail At A Time", email: "KerryOTAT@gmail.com", phone_number: "")
shelter8.address = address12
shelter8.save

shelter9 = Shelter.new(name: "Seattle Animal Shelter", email: "seattleanimalshelter@seattle.gov", phone_number: "206-386-7387")
shelter9.address = address13
shelter9.save

shelter10 = Shelter.new(name: "Oregon Humane Society", email: "records@oregonhumane.org", phone_number: "503-285-7722")
shelter10.address = address14
shelter10.save

user1 = User.new(first_name: "Andrew", last_name: "Maskiell", username: "iamcatdad", email: "maskiella@gmail.com", password: "catz4lyf3")
user1.address = address1
user1.save

user2 = User.new(first_name: "Brad", last_name: "Demarest", username: "bradfizzle", email: "bradfizzle@gmail.com", password: "iheartplatez")
user2.address = address2
user2.save

user3 = User.new(first_name: "Calvin", last_name: "Watterson", username: "comiccalvin", email: "calvin@gmail.com", password: "snowballfightz")
user3.address = address3
user3.save

user4 = User.new(first_name: "Charlie", last_name: "Brown", username: "chuckyb", email: "charles.brown@gmail.com", password: "goodgrief")
user4.address = address4
user4.save


employee1 = Employee.create(first_name: "Brittany", last_name: "Lasch", username: "kittymomma", email: "fands@gmail.com", password: "fands43va", shelter_id: 6)
employee2 = Employee.create(first_name: "Max", last_name: "Fluff", username: "maxyflu", email: "mfluff@gmail.com", password: "fluffernutter", shelter_id: 1)
employee3 = Employee.create(first_name: "Kitty", last_name: "Catz", username: "kittycatz", email: "kcatz@gmail.com", password: "kittiezdhabest", shelter_id: 2)
employee4 = Employee.create(first_name: "Bob", last_name: "Smith", username: "billybob", email: "bsmith@gmail.com", password: "bobbylovesdogz", shelter_id: 3)
employee5 = Employee.create(first_name: "Jane", last_name: "Svarten", username: "svartenj", email: "jsvarten@gmail.com", password: "svartyfarty", shelter_id: 4)
employee6 = Employee.create(first_name: "Jill", last_name: "Jensen", username: "jillyj", email: "jjensen@gmail.com", password: "DOGZ4R3B3ST", shelter_id: 4)
employee7 = Employee.create(first_name: "Helga", last_name: "Schumann", username: "ilikeshoez", email: "hschumann@gmail.com", password: "shoezshoes5H035", shelter_id: 5)
employee8 = Employee.create(first_name: "Nikolai", last_name: "Tesla", username: "unlikelyadmin", email: "electromags@gmail.com", password: "electricityRulez", shelter_id: 6, admin: true)
employee9 = Employee.create(first_name: "Ted", last_name: "Spacko", username: "teddy", email: "tspacko@gmail.com", password: "spackywacky", shelter_id: 1, admin: true)
employee10 = Employee.create(first_name: "Tim", last_name: "Knowsitall", username: "genius_man", email: "sosmart@gmail.com", password: "DhaSmartest", shelter_id: 2, admin: true)
employee11 = Employee.create(first_name: "Peter", last_name: "Baumwollschwanz", username: "CARROT_COLLECTOR", email: "carrotlove@gmail.com", password: "iL0v3C4Rr0tZ", shelter_id: 3, admin: true)
employee12 = Employee.create(first_name: "Yogi", last_name: "Honeywell", username: "y_beara", email: "yhoney@gmail.com", password: "lolzb34rz", shelter_id: 4, admin: true)
employee13 = Employee.create(first_name: "Smartman", last_name: "Sosmart", username: "smartsmart", email: "ssosmart@gmail.com", password: "timizdum", shelter_id: 5, admin: true)

cat1 = Pet.create(name: "Grandma", nickname: "Gram", animal: "Cat", age: 16, breed: "Tuxedo", info: "So old and goofy", owner: user1)
cat2 = Pet.create(name: "Kirito", nickname: "Kiki", animal: "Cat", age: 3, breed: "Black medium fur", info: "He's a little shit, but still really cute", owner: user1)
cat3 = Pet.create(name: "Garfield", nickname: "Gargarbinks", animal: "Cat", age: 10, breed: "Orange Fatty", info: "Eats way too much and is constantly patronizing", owner: shelter1)
cat4 = Pet.create(name: "Larry", animal: "Cat", age: 11, breed: "Sphinx", info: "Real sweetheart", owner: shelter2)
cat5 = Pet.create(name: "Hobbes", nickname: "Hobbikins", animal: "Cat", age: 2, breed: "Faux-Tiger", info: "Not real? But still the greatest friend a boy could have", owner: user3)
cat6 = Pet.create(name: "Petunia", nickname: "Tunerz", animal: "Cat", age: 4, breed: "Tortie", info: "Spunky little cat, who also loves to snuggle", owner: shelter3)

dog1 = Pet.create(name: "Snoopy", nickname: "Snoopz", animal: "Dog", age: 5, breed: "Beagle", info: "Sly but small", owner: user4)
dog2 = Pet.create(name: "Lily", nickname: "Lilyyyyyyyy", animal: "Dog", age: 3, breed: "Black Lab mix", info: "She's a real goofball, but she's been a great companion", owner: user2)
dog3 = Pet.create(name: "Pooper", nickname: "Poopz", animal: "Dog", age: 8, breed: "Bulldog", info: "Kinda stinky, but playful", owner: shelter4)
dog4 = Pet.create(name: "Mr. Peanut Butter", nickname: "Dumbo", animal: "Dog", age: 5, breed: "Golden Lab", info: "Waaaaaaaaay too much energy", owner: shelter5)
dog5 = Pet.create(name: "Scrouge", nickname: "Ebby", animal: "Dog", age: 7, breed: "Pug", info: "Lovable, despite his grumpy appearance", owner: shelter6)
dog6 = Pet.create(name: "Killer", nickname: "Cupcake", animal: "Dog", age: 11, breed: "Poodle", info: "Don't judge a book by its cover", owner: shelter2)
