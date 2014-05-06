class PageController < ApplicationController
  
  def login
    if user_signed_in?
      redirect_to page_top_path
    end
  end
  
  def top
    if user_signed_in?
      @courses = TrainingCourse.all
      @users = User.all
      render layout: 'frame'
    else
      redirect_to page_login_path
    end
  end
  
  def update_user
    if params[:user][:name].present?
      current_user.update_attribute(:name, params[:user][:name])
    end
    
    if params[:user][:email].present?
      current_user.update_attribute(:email, params[:user][:email])
    end
    
    if params[:user][:phone].present?
      current_user.update_attribute(:phone, params[:user][:phone])
    end
    
    if params[:user][:photo].present?
      current_user.update_attribute(:photo, params[:user][:photo])
    end
    redirect_to page_login_path
  end
  
end
