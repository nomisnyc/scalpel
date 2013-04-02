$(function(){
  $('.website_box').click(website_id);
  $('#scrape_button').click(scrape);

});

var website_ids = [];

function website_id(){
  var id = $(this).data('id');
  website_ids.push(id);
  console.log(website_ids);
}

function xfer(element){
  return "&ids[]=" + (element);
}
// ------ruby code-----
// flat = a.map{|i| "&ids[]=#{i}"}.join
// result = flat[1, flat.length-1]

function scrape(){
  var flat = website_ids.map(xfer).join('');
  var result = flat.substr(1);
  window.location.href = "/shows/?"+result;
  // $.ajax({
  //   dataType: 'script',
  //   url: '/shows/?'+result ,
  //   method: 'post'
  // });
}
// send ajax request of website ids
// display the returned results