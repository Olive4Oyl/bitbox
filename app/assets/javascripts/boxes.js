 $(function() {
  getBoxes();
  getSubscriptions();
  attachBoxes();
  getUsers();
  attachformListener();
  carouselIndex();
});


function getBoxes() {
  if ($('.boxes.index').length){

  	$.ajax({
  		url: "/boxes",
  		method: "GET",
  		dataType: "json",
  	}).done(function(response) {
      response.forEach(function(box_attr) {
        debugger
        var box = new Box(box_attr)
        var html = box.toHTML()
        $('.tr').append(html);
      })
    })
  }
}

function Box(attr) {
  this.description = attr.description;
  this.id = attr.id;
  this.title = attr.title;
  this.image = attr.image;
  this.price = price(attr.price);
  this.age_recommendation = attr.age_recommendation;
  this.box_level = attr.sub_box_level
  this.box_info = attr.sub_box_info
  this.box_guide = attr.sub_box_guide
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
   	"For ages " + this.age_recommendation + "+" + '</br>' + '</br>',
  ].join("")
}


Box.prototype.toSubHTML = function(){
  return [
   '<br><h3><strong>',
    this.box_level, 
    '</strong></h3>',
   '<strong>',
    this.title,
   '</strong></br>',
    this.description + '</br>',
    "<br><strong> What You'll Get </strong></br>",
    this.box_info + '</br>',
    '(+ Thousands More Online & On the App!)' +'</br>',
    '<br>' + this.box_guide + '</br>',
    'Step-by-step instructions that guide you from simple circuit building to mind-blowing inventions. </br>',
    '<br> For ages ' + this.age_recommendation + "+" + '</br>',
    '<br>*All plans will automatically renew but may be canceled at anytime. Applicable taxes not included.'
  ].join("")
}




