class Ability
  include CanCan::Ability

  def initialize(user)
   user ||= User.new
    if (user.role = 'admin')
      can :manage, Category, user_id: user.id
      can :manage, CategoryDetail, user_id: user.id
    else
      can :read, :all
    end
  end
end
