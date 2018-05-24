$(document).ready(function () {
  attachListeners();
});

// $(document).on('turbolinks: load', function () {
//   attachListeners();
// });

// function attachListeners () {
//   $('#shelter-list').on('click', () => displayMoreShelters());
//   $('#recent-pets').on('click', () => loadRecentPets());
// }

function attachListeners () {
  // generating additional shelters on home page
  $('button.js-more').on('click', function(e) {
    e.preventDefault();
    let counter = parseInt($('button.js-more').attr('data-id')) * 3;
    $.getJSON(this.href).done(function(data) {
      // make separate shelters variable for this?
      $('div#additional-shelters').html('');
      // debugger
      data.slice(3, counter).forEach(function(shelter) {
        // console.log("I'm being clicked!");
          let newShelter = new Shelter(shelter.id, shelter.name, shelter.email, shelter.phoneNumber, shelter.address, shelter.employees, shelter.pets);
          let formattedShelter = newShelter.formatShelterIndex();
          $('div#additional-shelters').append(formattedShelter);
      });
    });
    $('button.js-more').attr("data-id", function(i, val) {
      return ++val;
    });
  });

  // generating additional pets on home page
};

// JavaScript Model Objects
function Shelter(id, name, email, phoneNumber, address, employees, pets) {
  this.id = id;
  this.name = name;
  this.email = email;
  this.phoneNumber = phoneNumber;
  this.address = address;
  this.employees = employees;
  this.pets = pets;
}

function Pet(id, name, nickname, animal, age, breed, info, owner) {
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
Shelter.prototype.formatShelterIndex = function () {
  let shelterHtml = '';
  shelterHtml += '<div class="shelter-bubble bg-secondary">';
  shelterHtml += `<h4 class="shelterName" data-id="${this.id}">${this.name}</h4>`;
  shelterHtml += `<p class="shelterAddress">${this.address.city}, ${this.address.state}</p>`;
  shelterHtml += `<a href="/shelters/${this.id}">Learn more</a>`;
  shelterHtml += '</div>';
  return shelterHtml;
}

Pet.prototype.formatShelterPets = function () {
  let petHtml = '';
  petHtml += `<h4 class="petName" data-id="${this.id}">${this.name} - <small>${this.animal}</small></h4>`;
  return petHtml;
}
