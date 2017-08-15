class Arts::PublishController < ApplicationController
	before_action :set_art, only:[:create]	
	def create
		@art.update(art_partams);
		authorize @art
	end

	private 
		def set_art
			@art = Art.find(params[:art_id])
		end

		def art_partams
			params.permit(:is_publish).merge!(publish_at: Time.now)
		end
end
