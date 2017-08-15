module WelcomeHelper
	
	def user_links
			content_tag :li do 	
	     if current_user
	       link_to "Sign Out", destroy_user_session_path, method: :delete  
	     else
	       link_to "Sign In", new_user_session_path  
	     end
	   end
	end

end
