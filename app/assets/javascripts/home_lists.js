


$(document).ready(function () {
  attachListeners();
});

function attachListeners () {
  $('#shelter-list').on('click', () => displayMoreShelters());
  $('#recent-pets').on('click', () => loadRecentPets());
}

function displayMoreShelters () {
  $('.js-more').on('click', function(e) {
    let counter = parseInt($('.js-more').attr('data-id')) * 3;
    $.getJSON(this.href).done(function(data) {
      // make separate shelters variable for this?
      $('div#additional-shelters').html('');
      data.slice(3, counter).forEach(function(shelter) {
          let newShelter = new Shelter(this.id, this.name, this.email, this.phoneNumber, this.address, this.employees, this.pets);
          let formattedShelter = newShelter.formatShelterIndex();
          $('div#additional-shelters').append(formattedShelter);
      });
    });
    $('.js-more').attr("data-id", function(i, val) {
      return ++val;
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
