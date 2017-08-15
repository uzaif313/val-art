class Artist < User
	


	#scope
	default_scope{where(role: User::Roles.first)}


end