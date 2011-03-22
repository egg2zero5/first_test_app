class Ability

  include CanCan::Ability
 
  def initialize(user)
   
  user ||= User.new # guest user

    if user.role=="admin"
        can :manage, :all
    elsif user.role=="user"
        can :read, :all
        can :manage, Line_items
    else
       can :read, [Store] 
    end
   
  end
end
