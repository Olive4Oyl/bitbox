function getUsers(){
	if($('.users.show').length) {
		$.ajax({
			url: this.location.pathname,
			method: "GET",
			dataType: "json",
		}).done(function(response){
			var string = "<h2>" + response.name +"'s Subscription </h2>"
			$('.card-info').prepend(string)
		});

	}
}

function userButton(){
$(".btn-pref .btn").click(function () {
    $(".btn-pref .btn").removeClass("btn-primary").addClass("btn-default");
    // $(".tab").addClass("active"); // instead of this do the below 
    $(this).removeClass("btn-default").addClass("btn-primary");   
});
};

