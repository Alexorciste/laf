class PrivatecatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
        scope.all
    end
  end

  def show?
    user.id == record.gallery_owner.id || user.admin?
  end

  def create?
    user.nil? ? false : user.admin?
  end

  def update?
    user.nil? ? false : user.admin?
  end

  def destroy?
    user.nil? ? false : user.admin?
  end
end
