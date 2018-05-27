$(document).ready(function () {
  attachIndexListeners();
})

function attachIndexListeners() {
  $('.js-next').on('click', loadNextShelters)
}

function loadNextShelters(e) {
  e.preventDefault();
  $('#shelters-index').html('');
  $.getJSON(this.href, function(data) {
      debugger
    })
}

function Shelter(id, name, email, phoneNumber, address) {
  this.id = id;
  this.name = name;
  this.email = email;
  this.phoneNumber = phoneNumber;
  this.address = address;
}

Shelter.prototype.formatShelterIndex = function () {
  let shelterIndexHtml = '';
  // find out way to use `display_address` helper
  if (this.street2 != "") {
    shelterIndexHtml += `${this.street1}<br>${this.street2}<br>${this.city}, ${this.state} ${this.zip}`
  } else if (this.street1 != "" && this.zip != "") {
    shelterIndexHtml += `${this.street1}<br>${this.city}, ${this.state} ${this.zip}`
  } else {
    shelterIndexHtml += `${this.city}, ${this.state}`
  }
  shelterIndexHtml += "<br>"
  if (this.phoneNumber != null && this.email != null) {
    shelterIndexHtml += `Phone Number: ${this.phoneNumber}<br>Email: ${this.email}`
  } else if (this.email != null) {
    shelterIndexHtml += `Email: ${this.email}`
  } else if (this.phoneNumber != null) {
    shelterIndexHtml += `Phone Number: ${this.phoneNumber}`
  }
  return shelterIndexHtml;
}
