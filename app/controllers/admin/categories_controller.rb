class Admin::CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin
  
  def index
    @categories = Category.all
    @category = Category.new
  end
end
