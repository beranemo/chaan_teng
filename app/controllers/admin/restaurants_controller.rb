class Admin::RestaurantsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin
  
  def index
  end
  
  private
  
  def authenticate_admin
    unless current_user.role == "admin"
      flash[:alert] = "你沒有相關權限，不允許此操作"
      redirect_to root_path
    end
  end
end
