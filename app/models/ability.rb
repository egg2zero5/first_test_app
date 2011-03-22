class Ability

  include CanCan::Ability
 
  def initialize(user)
   
  user ||= User.new # guest user

    if user.role=="admin"
        can :manage, :all
    else user.role=="user"
        can :manage, LineItem
    end
   
  end
end
