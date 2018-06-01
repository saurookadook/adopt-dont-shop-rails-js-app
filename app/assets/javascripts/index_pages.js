// $(document).ready(function () {
//   attachIndexListeners();
// })

function attachIndexListeners() {
  $('.js-next').on('click', loadNextShelters)
}

function loadNextShelters(e) {
  e.preventDefault();
  $('#shelters-index .list-1').html('');
  $('#shelters-index .list-2').html('');
  $.getJSON(this.href, function(data) {
    let index1 = parseInt($('#shelters-index').attr("data-id")[0]) + 1;
    let index2 = parseInt($('#shelters-index').attr("data-id")[1]) + 1;
    data.slice((index1 * 6), (index2 * 6)).forEach(function(shelter, i) {
      let nextShelter = new ShelterIndex(shelter.id, shelter.name, shelter.email, shelter.phone_number, shelter.address);
      let formattedNextShelter = nextShelter.formatShelterIndex();
      if (i % 2 === 0) {
        $('#shelters-index .list-1').append(formattedNextShelter);
      } else {
        $('#shelters-index .list-2').append(formattedNextShelter);
      }
    })
    $('#shelters-index').attr("data-id", `${index1}${index2}`);
  })
}

// Translate JSON reponses into JavaScript Model Objects
function ShelterIndex(id, name, email, phoneNumber, address) {
  this.id = id;
  this.name = name;
  this.email = email;
  this.phoneNumber = phoneNumber;
  this.address = address;
}

ShelterIndex.prototype.formatShelterIndex = function () {
  let shelterIndexHtml = '';
  // find out way to use `display_address` helper
  shelterIndexHtml += '<div class="index-shelter-container bg-white p-3">'
  shelterIndexHtml += '<div class="index-shelter-info bg-secondary p-2">'
  shelterIndexHtml += `<h4><a href="/shelters/${this.id}">${this.name}</a></h4>`
  if (this.address.street2 != "") {
    shelterIndexHtml += `${this.address.street1}<br>${this.address.street2}<br>${this.address.city}, ${this.address.state} ${this.address.zip}`
  } else if (this.address.street1 != "" && this.address.zip != "") {
    shelterIndexHtml += `${this.address.street1}<br>${this.address.city}, ${this.address.state} ${this.address.zip}`
  } else {
    shelterIndexHtml += `${this.address.city}, ${this.address.state}`
  }
  shelterIndexHtml += "<br>"
  if (this.phoneNumber != null && this.email != null) {
    shelterIndexHtml += `Phone Number: ${this.phoneNumber}<br>Email: ${this.email}`
  } else if (this.email != null) {
    shelterIndexHtml += `Email: ${this.email}`
  } else if (this.phoneNumber != null) {
    shelterIndexHtml += `Phone Number: ${this.phoneNumber}`
  }
  shelterIndexHtml += "</div></div>"
  return shelterIndexHtml;
}
