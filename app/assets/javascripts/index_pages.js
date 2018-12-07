// $(document).ready(function () {
//   attachIndexListeners();
// })

function attachIndexListeners() {
  $('.js-next').on('click', loadNextShelters)
}

// Translate JSON reponses into JavaScript Model Objects
function ShelterIndex(id, name, email, phoneNumber, address) {
  this.id = id;
  this.name = name;
  this.email = email;
  this.phoneNumber = phoneNumber;
  this.address = address;
}

function loadNextShelters(e) {
  e.preventDefault();
  $('#shelters-index .list-1').html('');
  $('#shelters-index .list-2').html('');
  // this.href == undefined: potentially because of <button> instead of <a>?
  $.getJSON(this.href, function(data) {
    let index1 = parseInt($('#shelters-index').attr("data-id")[0]) + 1;
    let index2 = parseInt($('#shelters-index').attr("data-id")[1]) + 1;
    data.slice((index1 * 6), (index2 * 6)).forEach(function(shelter, i) {
      let nextShelter = new ShelterIndex(shelter.id, shelter.name, shelter.email, shelter.phone_number, shelter.address);
      debugger
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

ShelterIndex.prototype.formatShelterIndex = function () {
  let shelterIndexHtml = '';
  // find out way to use `display_address` helper
  shelterIndexHtml += `
    <div class="index-shelter-container bg-white p-3 mb-2">
    <div class="index-shelter-info bg-secondary p-2">
    <h4 class="pt-2">${this.name}</h4>`
  // display_addres helper method
  if (this.address.street2 != "") {
    shelterIndexHtml += `${this.address.street1}<br>${this.address.street2}<br>${this.address.city}, ${this.address.state} ${this.address.zip}`
  } else if (this.address.street1 != "" && this.address.zip != "") {
    shelterIndexHtml += `${this.address.street1}<br>${this.address.city}, ${this.address.state} ${this.address.zip}`
  } else {
    shelterIndexHtml += `${this.address.city}, ${this.address.state}`
  }
  shelterIndexHtml += "<br>"
  // display_contact helper method
  if (this.phoneNumber != null && this.email != null) {
    shelterIndexHtml += `Phone Number: ${this.phoneNumber}<br>Email: ${this.email}`
  } else if (this.email != null) {
    shelterIndexHtml += `Email: ${this.email}`
  } else if (this.phoneNumber != null) {
    shelterIndexHtml += `Phone Number: ${this.phoneNumber}`
  }
  shelterIndexHtml += `
    <p class="index-learn-more"><a href="/shelters/${this.id}">Learn More</a></p>
    </div></div>`
  return shelterIndexHtml;
}


// TODO: refactor using class?
// class ShelterIndex {
//   init(id, name, email, phoneNumber, address) {
//     this.id = id;
//     this.name = name;
//     this.email = email;
//     this.phoneNumber = phoneNumber;
//     this.address = address;
//   }

//   formatShelterIndex() {
//     const outputHtml = () => {
//       debugger
//       `<div class="index-shelter-container bg-white p-3 mb-2">
//       <div class="index-shelter-info bg-secondary p-2">
//         <h4 class="pt-2">${this.name}</h4>`
//           if (this.address.street2 != "") {
//             `${this.address.street1}<br>${this.address.street2}<br>${this.address.city}, ${this.address.state} ${this.address.zip}`
//           } else if (this.address.street1 != "" && this.address.zip != "") {
//             `${this.address.street1}<br>${this.address.city}, ${this.address.state} ${this.address.zip}`
//           } else {
//             `${this.address.city}, ${this.address.state}`
//           }
//         `<br>`
//           if (this.phoneNumber != null && this.email != null) {
//             `Phone Number: ${this.phoneNumber}<br>Email: ${this.email}`
//           } else if (this.email != null) {
//             `Email: ${this.email}`
//           } else if (this.phoneNumber != null) {
//             `Phone Number: ${this.phoneNumber}`
//           }
//         `<p class="index-learn-more"><a href="/shelters/${this.id}">Learn More</a></p>
//         </div></div>`
//     }

//     return outputHtml;
//   }

//   loadNextShelters(e) {
//     e.preventDefault();
//     $('#shelters-index .list-1').html('');
//     $('#shelters-index .list-2').html('');
//     // this.href == undefined: potentially because of <button> instead of <a>?
//     $.getJSON(this.href, function(data) {
//       let index1 = parseInt($('#shelters-index').attr("data-id")[0]) + 1;
//       let index2 = parseInt($('#shelters-index').attr("data-id")[1]) + 1;
//       data.slice((index1 * 6), (index2 * 6)).forEach(function(shelter, i) {
//         let nextShelter = new ShelterIndex(shelter.id, shelter.name, shelter.email, shelter.phone_number, shelter.address);
//         debugger
//         let formattedNextShelter = nextShelter.formatShelterIndex();
//         if (i % 2 === 0) {
//           $('#shelters-index .list-1').append(formattedNextShelter);
//         } else {
//           $('#shelters-index .list-2').append(formattedNextShelter);
//         }
//       })
//       $('#shelters-index').attr("data-id", `${index1}${index2}`);
//     })
//   }
// }