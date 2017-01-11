function getSubscriptions(){
	if ($('.subscriptions.index').length) {
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
}

// constructor function for some Subscription objects
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
	if ($('.subscriptions.index').length) {
		console.log("ok")
		$('.table').on("click", function(ev){
			var id = this.id
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
}

function attachformListener() {
   $('form.subscription').submit(function(event) {
     //prevent form from submitting the default way
     event.preventDefault();
     var values = $(this).serialize();
     var posting = $.post("/subscriptions", values);
     posting.done(function(data) {
      var post = new Subscription(data)
      var html = post.toSubFormHTML()
      $('.monthly-plan').html(html)
     });
   });
};

Subscription.prototype.toSubFormHTML = function() {
	return [
	"<h3> BitBox: </h3></br>", 
	"<strong>Monthly Plan</strong><br>",
	 "<br>",
	 this.level,
	 "</br>"
	].join("");
}








