class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    #record is the @restaurant that comes from the authorize @restaurant
    record.user == user || user.owner?
    #user --> current_user
  end

  def destroy?
    record.user == user || user.owner?
  end
end
