# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes) - Have more than one has_many relationship (Users and Shelters both have many Pets)
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User) - Have more than one belongs_to relationship (Pets belongs to either Users or Shelters, Employees belong to Shelters)
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients) - Employees have many Pets through Caretakers (not all Employees work with the animals, and the Employees that do are responsible for the care of multiple pets)
- [ ] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) - Simple validations included for all models
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup (how e.g. Devise) - Custom validations and BCrypt for password encryption
- [x] Include login (how e.g. Devise) - Users/Employees login by entering username and password, and passwords are authenticated through BCrypt
- [x] Include logout (how e.g. Devise) - Users/Employees are both able to log out via a link in the navbar at the top of every page
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) - Users may log in via Google (enabled with the use of OmniAuth gem)
- [x] Include nested resource show or index (URL e.g. users/2/recipes) - Included for users/pets and shelters/pets
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients) - Included for users/pet and shelters/pet
- [x] Include form display of validation errors (form URL e.g. /recipes/new) - Errors are displayed at the top of the page if any are present upon validation

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [x] Views use helper methods if appropriate - Several helper methods used to clean up views (current_user method, display_address method, etc.)
- [x] Views use partials if appropriate - Several partials are used (layouts/errors, layouts/pet, pets/form, etc.)
