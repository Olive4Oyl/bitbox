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

function attachBoxes(){
	$('.table').on("click", function(ev){
		ev.preventDefault();
		var id = parseInt(this.id) + 1
		$.ajax({
			url: `/subscriptions/${id}`,
			method: "GET",
			dataType: "json",
		}).done(function(response){
			var box = new Box(response.box)
			var html = box.toSubHTML()
			$('.box-info').empty();
			$('.box-info').append(html)
		})
	})
}





