let shelterList = [];

$(document).ready(function () {
  attachListeners();
});

function attachListeners () {
  $('#shelter-list').on('click', () => displayShelters());
  $('#recent-pets').on('click', () => displayRecentPets());
}

// perhaps loadShelterList would be better, and it would push shelter objects into shelterList variable?

function displayShelters () {
  let id = $(this).data("id");
  $.get("/" + id + ".json", function (data) {
    $(".shelterName").text()
  })
  // use to_json to load properties correctly
}

function displayRecentPets () {

}
