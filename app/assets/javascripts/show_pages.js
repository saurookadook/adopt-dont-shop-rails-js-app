// $(document).ready(function () {
//   attachShowListeners();
// })

// $(document).on('turbolinks: load', function () {
//   attachShowListeners();
// });

function attachShowListeners () {
  $("#view-user-pets").on('click', displayUserPets)
  // $("#add-user-pet").on('click', displayUserPets)
  $("#new_pet").on('submit', addUserPet)
}

function displayUserPets(e) {
  e.preventDefault();
  $.getJSON(this.href, function(data) {
    $('#pets-list').html('');
    data.forEach(function (pet) {
      let newUserPet = new UserPet(pet.id, pet.name, pet.nickname, pet.animal, pet.age, pet.breed, pet.info, pet.owner);
      let formattedUserPet = newUserPet.formatUserPet();
      $('#pets-list').append(formattedUserPet);
    })
  })
}

function displayAddPetForm(e) {
  e.preventDefault();
  $('#add-user-pet-form').toggle();
}

function addUserPet(e) {
  e.preventDefault();
  url = this.action;
  const data = $(this).serialize();
  $.ajax({
    type: "POST",
    url: url,
    data: data,
    success: function(response) {
      let newUserPet = new UserPet(response.id, response.name, response.nickname, response.animal, response.age, response.breed, response.info, response.owner);
      let formattedUserPet = newUserPet.formatUserPet();
      $('#pets-list').append(formattedUserPet);
      $('#pet_name').val('');
      $('#pet_nickname').val('');
      $('#pet_animal').val('');
      $('#pet_age').val('');
      $('#pet_breed').val('');
      $('#pet_info').val('');
      // $('#add-user-pet-form').toggle();
    }
  })
}

// ***** organize models into own file? ******
function User(id, username, pets) {
  this.id = id;
  this.username = username;
  this.pets = pets;
};

function UserPet(id, name, nickname, animal, age, breed, info, owner) {
  this.id = id;
  this.name = name;
  this.nickname = nickname;
  this.animal = animal;
  this.age = age;
  this.breed = breed;
  this.info = info;
  this.owner = owner;
}

// **** figure out way to use this instead? ****
// User.prototype.formatUserPets = function () {
//   let userPetHtml = '';
//   this.pets.forEach(function(pet) {
//     userPetHtml +=  `<h4>Name: ${pet.name}</h4>`
//     userPetHtml +=  '<ul>'
//     if (pet.nickname != undefined) {
//       userPetHtml +=  `<p>Nickname: ${pet.nickname}</p>`
//     }
//     userPetHtml +=  `<p>Species:  ${pet.animal}</p>`
//     if (pet.age != undefined) {
//       userPetHtml +=  `<p>Age: ${pet.age}</p>`
//     }
//     if (pet.breed != undefined) {
//       userPetHtml +=  `<p><%= "Breed: #{pet.breed}" if pet.breed != "" %></p>`
//     }
//     if (pet.info != undefined) {
//       userPetHtml +=  `<p><%= "Info: #{pet.info}" if pet.info != "" %></p>`
//     }
//     userPetHtml +=  '</ul><br />'
//   })
//   return userPetHtml;
// }

UserPet.prototype.formatUserPet = function () {
  let userPetHtml = '';
  userPetHtml += `<h4>Name: ${this.name}</h4>`
  userPetHtml += '<ul>'
  if (this.nickname != "") {
    userPetHtml += `<p>Nickname: ${this.nickname}</p>`
  }
  userPetHtml +=  `<p>Species:  ${this.animal}</p>`
  if (this.age != null) {
    userPetHtml += `<p>Age: ${this.age}</p>`
  }
  if (this.breed != "") {
    userPetHtml += `<p>Breed: ${this.breed}</p>`
  }
  if (this.info != "") {
    userPetHtml += `<p>Info: ${this.info}</p>`
  }
  userPetHtml += '</ul><br />'
  return userPetHtml;
}
