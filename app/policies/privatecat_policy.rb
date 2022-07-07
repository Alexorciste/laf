class PrivatecatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        raise Pundit::NotAuthorizedError, 'not allowed to view this action'
      end
    end
  end

  def show?


    user.id == @userauth || user.admin?
    raise



  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    user.admin?
  end
end
