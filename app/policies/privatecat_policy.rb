class PrivatecatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        #  || record.user == @private_assign.user
        scope.all
      # elsif
      #   record.user == @private_assign.user
      else
        raise Pundit::NotAuthorizedError, 'not allowed to view this action'
      end
    end
  end

  def show?

  # raise

    user == userauth || user.admin?




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
