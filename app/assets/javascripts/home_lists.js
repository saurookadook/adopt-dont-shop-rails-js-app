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

function displayShelters () {
  
}

function displayRecentPets () {

}
