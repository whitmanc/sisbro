$(document).ready(function(){
  $('#product_21').detach().prependTo('#products');
  $('#product_26').remove();
  $('#product_19').remove();
  $('#product_4').detach().insertAfter('#product_2');
});
