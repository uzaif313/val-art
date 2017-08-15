class ArtPolicy < ApplicationPolicy

	def index?
		user.present?
	end


	def create?
		user.present? && user.role=="Artist"
	end

	def new?
		create?
	end

	def update?
		user.present? && user == record.user	
	end

	def edit?
		update?
	end

	def destroy?
		update?
	end
	# def show?
	# 	index?
	# end

	# def edit
	# 	# current_user.arts
	# end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
