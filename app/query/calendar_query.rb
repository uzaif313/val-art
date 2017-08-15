class CalendarQuery

	def initialize(params = {})
		 @params = params.to_h
	end

	def fetch_events
		Event.where(build_where).joins(:user,:art).select("events.id,
																						  users.username,
																						  events.title as title,
																						  events.start_time as start")
	end


	protected 
		def build_where
			where_params={}
			if @params.present?
					where_params[:start_time]= build_range(@params['date_range']) if @params['date_range'].present?
					where_params[:event_type]=@params['event_type'] if @params['event_type'].present?
					where_params['arts.user_id'] = @params['user']
			end
			where_params
		end

		def build_range(range_params)
			date_range =range_params.split("-").map(&:to_date)
      date_range[0]..date_range[1]
		end
end