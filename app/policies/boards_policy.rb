class SubbluditPolicy < ApplicationPolicy
  def show?
    true
  end

  def index?
    true
  end

  def create?
    true
  end

  def update?
    is_admin?
  end

  def destroy?
    is_admin?
  end

  private

  def is_admin?
    unless user.nil?
      user.admin?
    end
  end
end
