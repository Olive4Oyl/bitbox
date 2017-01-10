function getUsers(){
	if($('.users.show').length) {
		$.ajax({
			url: this.location.pathname,
			method: "GET",
			dataType: "json",
		}).done(function(response){
			var string = "<h2>" + response.name +"'s Subscription </h2>"
			$('.user-container').prepend(string)
		});

	}
}



