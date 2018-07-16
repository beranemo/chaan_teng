class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  
  def authenticate_admin
    unless current_user.role == "admin"
      flash[:alert] = "你沒有相關權限，不允許此操作"
      redirect_to root_path
    end
  end
  
end
