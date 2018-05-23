let shelterList = [];

$(document).ready(function () {
  attachListeners();
});

function attachListeners () {
  $('#shelter-list').on('click', () => loadShelters());
  $('#recent-pets').on('click', () => loadRecentPets());
}

function initialShelters () {
  $.getJSON(this.href).done(function(data) {
    
  })
}

// Make prototypes
function Shelter(id, name, email, phoneNumber, address, employees, pets) {
  this.id = id;
  this.name = name;
  this.email = email;
  this.phoneNumber = phoneNumber;
  this.address = address;
  this.employees = employees;
  this.pets = pets;
}

// prototype to format shelter
Feature.protoype.formatShelterIndex = function () {
  let shelterHtml = '';
  shelterHtml += `<h4 class="shelterName" data-id="${this.id}">${this.name}</h4>`
  shelterHtml += `<p class="shelterAddress">${this.address.city}, ${this.address.state}</p>`
  shelterHtml += `<a href="/shelters/${this.id}">Learn more</a>`
}
