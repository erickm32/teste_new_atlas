class Obeduc::ColorPolicy
  attr_reader :user, :model

  def initialize(current_user, model)
    @user = current_user
    @model = model
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    @user.has_role? :admin
  end

  def destroy?
    @user.has_role? :admin
    # false
  end
end
