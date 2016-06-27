class MessagePolicy < ApplicationPolicy
  def show?
    true
  end

  def create?
    is_user?
  end

  def update?
    is_user? || is_admin?
  end

  def destroy?
    is_user? || is_admin? 
  end

  private

  def is_user?
    record.user == user
  end

  def is_admin?
    unless user.nil?
      user.admin?
    end
  end

end
