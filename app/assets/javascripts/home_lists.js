


$(document).ready(function () {
  initialShelters();
  attachListeners();
});

function attachListeners () {
  $('#shelter-list').on('click', () => loadShelters());
  $('#recent-pets').on('click', () => loadRecentPets());
}

function initialShelters () {
  $.getJSON(this.href).done(function(data) {
    $('#most-recent-shelters').html('');
    data.forEach(function(shelter) {
      let counter = 0;
      if (counter < 3) {
        let newShelter = new Shelter(this.id, this.name, this.email, this.phoneNumber, this.address, this.employees, this.pets);
        let formattedShelter = newShelter.formatShelterIndex();
        $('#most-recent-shelters').append(formattedShelter);
        counter++;
      }
    });
  });
};

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
Shelter.prototype.formatShelterIndex = function () {
  let shelterHtml = '';
  shelterHtml += '<div class="shelter-bubble bg-secondary">';
  shelterHtml += `<h4 class="shelterName" data-id="${this.id}">${this.name}</h4>`;
  shelterHtml += `<p class="shelterAddress">${this.address.city}, ${this.address.state}</p>`;
  shelterHtml += `<a href="/shelters/${this.id}">Learn more</a>`;
  shelterHtml += '</div>';
  return shelterHtml;
}
