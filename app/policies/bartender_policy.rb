class BartenderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    user == user
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
