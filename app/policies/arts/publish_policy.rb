class Arts::PublishPolicy < ArtPolicy
	def update?
		user.present? && record.user == user
	end
end