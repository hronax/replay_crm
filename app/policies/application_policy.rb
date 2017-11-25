class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, resource)
    @user = user
    @resource = resource
  end

  def admin?
    user.admin?
  end

  def manager?
    user.manager? || user.admin?
  end
end
