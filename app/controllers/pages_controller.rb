class PagesController < ApplicationController
  def index
    @categories = Category.all
  end
  
  def category
    @category = Category.includes(:libraries => :statuses).find_by_name(params[:name])
    @libraries = @category.libraries
  end
end
