$(document).ready(function () {
  attachHomeListeners();
  attachIndexListeners();
  attachShowListeners();
});

// $(document).on('turbolinks: load', function () {
//   attachHomeListeners();
//   attachIndexListeners();
//   attachShowListeners();
// });

function attachHomeListeners () {
  $('#shelter-list .js-more').on('click', displayMoreShelters);
  $('#recent-pets .js-more').on('click', displayMorePets);
}

function displayMoreShelters (e) {
  e.preventDefault();
  let counter = parseInt($('#shelter-list .js-more').attr('data-id')) * 3;
  $.getJSON().done(function(data) {
    $('#additional-shelters').html('');
    let sortedShelters = JSON.parse(data.shelters)
    // let sortedShelters = data.sort(function(a, b) {
    //   return a.created_at - b.created_at
    // })
    sortedShelters.slice(3, counter).forEach(function(shelter) {
      let newShelter = new HomeShelter(shelter.id, shelter.name, shelter.email, shelter.phone_number, shelter.address, shelter.employees, shelter.pets);
      let formattedShelter = newShelter.formatSheltersHome();
      $('#additional-shelters').append(formattedShelter);
    });
  });
  $('#shelter-list .js-more').attr("data-id", function(i, val) {
    return ++val;
  });
};

function displayMorePets (e) {
  e.preventDefault();
  let counter = parseInt($('#recent-pets .js-more').attr('data-id')) * 3;
  $.getJSON().done(function(data) {
    $('#additional-pets').html('');
    let sortedPets = JSON.parse(data.pets);
    // let sortedPets = data.sort(function(a, b) {
    //   return a.created_at - b.created_at
    // })
    sortedPets.slice(3, counter).forEach(function(pet) {
      let newHomePet = new HomePet(pet.id, pet.name, pet.nickname, pet.animal, pet.age, pet.breed, pet.info, pet.owner);
      // if (newHomePet.owner.type === "shelter") {
        let formattedPet = newHomePet.formatPetsHome();
        $('#additional-pets').append(formattedPet);
      // }

    });
    $('#recent-pets .js-more').attr("data-id", function(i, val) {
      return ++val;
    })
  });
};

// Translate JSON reponses into JavaScript Model Objects
function HomeShelter(id, name, email, phoneNumber, address, employees, pets) {
  this.id = id;
  this.name = name;
  this.email = email;
  this.phoneNumber = phoneNumber;
  this.address = address;
  this.employees = employees;
  this.pets = pets;
}

function HomePet(id, name, nickname, animal, age, breed, info, owner) {
  this.id = id;
  this.name = name;
  this.nickname = nickname;
  this.animal = animal;
  this.age = age;
  this.breed = breed;
  this.info = info;
  this.owner = owner;
}

// Prototypes to properly format
HomeShelter.prototype.formatSheltersHome = function () {
  let shelterHtml = '';
  shelterHtml += '<div class="shelter-bubble text-secondary">';
  shelterHtml += `<h4 class="shelterName">${this.name}</h4>`;
  shelterHtml += `<p class="shelterAddress">${this.address.city}, ${this.address.state}</p>`;
  shelterHtml += `<p><a href="/shelters/${this.id}">Learn more</a></p>`;
  shelterHtml += '</div>';
  return shelterHtml;
}

HomePet.prototype.formatPetsHome = function () {
  let petHtml = '';
  petHtml += '<div class="pet-bubble text-secondary">';
  petHtml += `<h4 class="petName">Name: ${this.name}</h4>`;
  petHtml += `<p class="petAnimal">Animal: ${this.animal}</p>`;
  if (this.owner.username != undefined) {
    petHtml += `<p class="petOnwer">Owner: ${this.owner.username}</p>`;
  } else {
    petHtml += `<p class="petOwner">Owner: ${this.owner.name}</p>`;
  }
  // may need to ask about this
  petHtml += `<p><a href="/pets/${this.id}">Learn more</a></p></div>`;
  return petHtml;
}

HomePet.prototype.formatShelterPets = function () {
  let petHtml = '';
  petHtml += `<h4 class="petName" data-id="${this.id}">${this.name} - <small>${this.animal}</small></h4>`;
  return petHtml;
}
