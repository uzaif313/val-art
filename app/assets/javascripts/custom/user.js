UserSignUpForm = {
	 el:{
		_role_checkbox: $("input[type='checkbox']"),
		_hidden_role: $("input[type='hidden'][name='user[role]']")
	 },
	 init:function(){
	 	context = this;
	 	this.bindUIAction();
	 },
	 bindUIAction:function(){
	 	this.el._role_checkbox.on("click",this.update_hidden_field)
	 },
	 update_hidden_field:function(){
	 	console.log(context.el._role_checkbox.is(":checked"));
	 	if(context.el._role_checkbox.is(":checked"))	{
	 		context.el._hidden_role.val("Artist")
	 	}else{
	 		context.el._hidden_role.val("User")
	 	}
	 }
}

if ($('form').hasClass('user')) {
		UserSignUpForm.init()
}