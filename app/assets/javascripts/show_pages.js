$(document).ready(function () {
  attachListeners();
})

function attachListeners () {
  $('#view-pets').on('click', displayUserPets)
}

function displayUserPets(e) {
  e.preventDefault();
  $.getJSON(this.href).done(function(data) {
    $('#additional-pets').html('');
    console.log(data);
  })
}

function User(id, username, pets) {
  this.id = id;
  this.username = username;
  this.pets = pets;
};

User.prototype.formatUserPets = function () {
  let userPetHtml = '';
  this.pets.forEach(function(pet) {
    userPetHtml +=  `<h4>Name: ${pet.name}</h4>`
    userPetHtml +=  '<ul>'
    if (pet.nickname != undefined) {
      userPetHtml +=  `<p>Nickname: ${pet.nickname}</p>`
    }
    userPetHtml +=  `<p>Species:  ${pet.animal}</p>`
    if (pet.age != undefined) {
      userPetHtml +=  `<p>Age: ${pet.age}</p>`
    }
    if (pet.breed != undefined) {
      userPetHtml +=  `<p><%= "Breed: #{pet.breed}" if pet.breed != "" %></p>`
    }
    if (pet.info != undefined) {
      userPetHtml +=  `<p><%= "Info: #{pet.info}" if pet.info != "" %></p>`
    }
    userPetHtml +=  '</ul><br />'
  })
  return userPetHtml;
}
