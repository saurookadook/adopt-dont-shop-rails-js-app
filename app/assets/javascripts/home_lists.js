let shelterList = [];

$(document).ready(function () {
  attachListeners();
});

function attachListeners () {
  // $('td').on('click', function () {
  //   if (!$.text(this) && !checkWinner()) {
  //     doTurn(this);
  //   }
  // });

  $('#shelter-list').on('click', () => displayShelters());
  $('#recent-pets').on('click', () => displayRecentPets());
}

// perhaps loadShelterList would be better, and it would push shelter objects into shelterList variable?

function displayShelters () {
  // use to_json to load properties correctly
}

function displayRecentPets () {

}
