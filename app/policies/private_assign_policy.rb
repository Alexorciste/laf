class PrivateAssignPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end

def create?
  true
end

def update?
  return true
end

def destroy?
  return true
end

