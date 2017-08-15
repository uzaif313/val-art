class RoutesConstraints::XhrOnly
	  def self.matches?(request)
	    request.xhr?
	  end
end


