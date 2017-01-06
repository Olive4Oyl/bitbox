$(document).on('turbolinks:load', function() {
	getBoxes();
 //    if($('.boxes.index').length) {
	// 	getBoxes();
	// }
});

function getBoxes() {
	$.ajax({
		url: "/boxes",
		method: "GET",
		dataType: "json",
	}).done(function(response) {
		response.forEach(function(box_attr) {
		  var box = new Box(box_attr)
		  var html = box.toHTML()
		  $('.boxes-container').append(html);
		})
	})
}


function Box(attr) {
  this.description = attr.description;
  this.id = attr.id;
  this.title = attr.title;
  this.image = attr.image;
  // this.price = attr.price;
  // var price_attr = attr.price
  this.price = price(attr.price);
  this.age_recommendation = attr.age_recommendation;

}

function price(price_attr){
	return Math.round(price_attr*10)/1000.0
}


Box.prototype.toHTML = function(){
  return [
   '<img src="' + this.image + '" /></br>',
   "<strong>",
     this.title,
   "</strong></br>",
   "$" + this.price + '</br>',
    this.description + '</br>',
   	"For ages " + this.age_recommendation + "+" + '</br>',
  ].join("")
}


