class CalendarController < ApplicationController
  def index
  	@calendar = CalendarQuery.new(calendar_query_params).fetch_events.to_json
  	respond_to do |format|
  		format.html
  		format.js
  	end
  end

  private 
  	def calendar_query_params
  		params.permit(:date_range,:event_type).merge!(user:current_user)
  	end
end
