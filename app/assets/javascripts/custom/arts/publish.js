ArtsPublish = {
	el:{
		link:$("button[data-type='publish']")
	},
	init:function(){
		 context = this;
		 this.bindUIAction()
	},
	bindUIAction:function(){
		this.el.link.on("click",this.update_status)
	},
	update_status:function(e){
		var _data = {is_publish: $(this).attr("data-publish")}
		var _request_url = $(this).attr("data-link")	
		console.log($(this))
		$.ajax({
			url: _request_url,
			data: _data,
			dataType:"script",
			type: "POST"
		})
	},
}
if ($("table").hasClass("arts")) {
	ArtsPublish.init();
}