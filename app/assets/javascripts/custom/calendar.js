Calendar = {

	el:{
		calendar_element:$("#events"),
		date_range_element:$("#date_range"),
		form_element:$("form"),
		event_type:$("select#event_type")
	},
	init:function(){
		context = this
		this.bindUIAction();
		this.bindFullCalendar();
		this.bindDaterangePicker();
	},
	bindUIAction:function(){
		this.el.event_type.on("change",this.submit_form)	
	},
	bindFullCalendar:function(){
		this.el.calendar_element.fullCalendar({
			events:JSON.parse(this.el.calendar_element.attr("data-event"))
		})
	},
	bindDaterangePicker:function(){
		this.el.date_range_element.daterangepicker({
		 locale: {
            format: 'MMM DD,YYYY'
     }
		}).on("apply.daterangepicker",this.submit_form)
	},
	submit_form:function(){
		context.el.form_element.submit();
	}
 }


if($("div").hasClass("calendar")) {
	Calendar.init()
}