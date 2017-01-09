function getSubscriptions(){
	$.ajax({
		url: "/subscriptions",
		method: "GET",
		dataType: "json",
	}).done(function(response){
		response.forEach(function(sub_attr, index){
			var sub = new Subscription(sub_attr)
			var html = sub.toHTML()
			$(`td#${index}`).append(html);
		})
	})
}

function Subscription(attr) {
	this.level = attr.level;
	this.id = attr.id;
	this.description = attr.description;
	this.shipping_info = attr.shipping_info
	this.subtitle = attr.subtitle;
}

Subscription.prototype.toHTML = function(){
	return [
	'<strong><center>',
	this.level,
	'</center></strong></br>',
	'<center>' + this.subtitle + '</center></br>',
	'<center>' + this.description  + '</center></br>',
	'<br>'
	].join("")
}

function attachListener(){
	$('.table').on("click", function(ev){
		ev.preventDefault();
		var id = parseInt(this.id) + 1
		$.ajax({
			url: `/subscriptions/${id}`,
			method: "GET",
			dataType: "json",
		}).done(function(response){
			var box = new Box(response.box)
			var html = box.toHTML()
			$('.box-info').append(html)
		})
	})
}

function Box(attr) {
  this.description = attr.description;
  this.id = attr.id;
  this.title = attr.title;
  this.image = attr.image;
  this.age_recommendation = attr.age_recommendation;
  this.box_level = attr.sub_box_level
  this.box_info = attr.sub_box_info
  this.box_guide = attr.sub_box_guide
}



Box.prototype.toHTML = function(){
  return [
   '<br><h3><strong>',
   	this.box_level, 
   	'</strong></h3>',
   '<strong>',
   // '<img src="' + this.image + '" /></br>',
    this.title,
   '</strong></br>',
    this.description + '</br>',
   	"<br> What You'll Get </br>",
   	'<br>' + this.box_info + '</br>',
   	'(+ Thousands More Online & On the App!)' +'</br>',
   	'<br>' + this.box_guide + '</br>',
   	'Step-by-step instructions that guide you from simple circuit building to mind-blowing inventions. </br>',
   	'<br> For ages ' + this.age_recommendation + "+" + '</br>',
  ].join("")
}





