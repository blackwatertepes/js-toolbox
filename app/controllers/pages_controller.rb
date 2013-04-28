class PagesController < ApplicationController
  def index
    @categories = Category.includes(:libraries).order(:name)
    @page = "Home"
  end
  
  def category
    @category = Category.includes(:libraries => :statuses).find_by_name(params[:name])
    @libraries = @category.libraries
    @page = @category.title
  end
end
