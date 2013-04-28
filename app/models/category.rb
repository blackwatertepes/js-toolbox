class Category < ActiveRecord::Base
  attr_accessible :name
  
  has_many :libraries
  
  def title
    self.name.capitalize
  end
end
