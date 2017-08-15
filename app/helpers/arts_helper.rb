module ArtsHelper
	def art_collection
		Art.all.map{|art| [art.title,art.id]}
	end
end
