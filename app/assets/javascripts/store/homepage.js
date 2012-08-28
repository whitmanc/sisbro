$(document).ready(function(){
  $('#product_21').detach().prependTo('#products');
  $('#product_26').remove();
  $('#product_27').remove();
  $('#product_21').detach().insertAfter('#product_2');
});
