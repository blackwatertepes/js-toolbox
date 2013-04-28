class PagesController < ApplicationController
  def index
    @category = Category.first
    @libraries = @category.libraries
  end
end
