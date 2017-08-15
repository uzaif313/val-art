class EventPolicy < ApplicationPolicy

	def index?
		user.present? 
	end
  
  def show
    index?
  end

  def update?
    user.present? && user.role == "User"
  end

  def edit?
    update?
  end 

  def create?
    edit?
  end

  def new?
    create?
  end

  def destroy?
    create?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end

  private 
  	def event
  		record
  	end
end
