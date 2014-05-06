#this pass-through class needed to make devise registrations-related actions work for Users
class Users::SessionsController < Devise::SessionsController
  #include UsersHelper
  
  def new
    super
  end
  
  def destroy
    super
  end
 
end