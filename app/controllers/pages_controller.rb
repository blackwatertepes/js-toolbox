class PagesController < ApplicationController
  def index
    @category = Category.first
    @libraries = @category.libraries
  end
  
  def category
    @category = Category.find_by_name(params[:name])
    @libraries = @category.libraries
  end
end
