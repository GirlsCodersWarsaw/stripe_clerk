// show transfer data after click "money transfer" button on order page:

$(document).ready(function() {
  $('.custom-button').click(function() {
    var detailsDiv = $('#payment-data');
    detailsDiv.css("display", "block");
  });
});