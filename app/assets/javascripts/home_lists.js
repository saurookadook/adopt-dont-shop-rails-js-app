let shelterList = [];

$(document).ready(function () {
  attachListeners();
});

function attachListeners () {
  $('#shelter-list').on('click', () => loadShelters());
  $('#recent-pets').on('click', () => loadRecentPets());
}

// perhaps loadShelterList would be better, and it would push shelter objects into shelterList variable?

function displayShelters () {
  $.post('/', data, function (shelters) {
    let initialShelters = shelters.data.slice(0, 2);
    $('.most-recent-shelters')
  // use to_json to load properties correctly
  })
}

function displayRecentPets () {

}
