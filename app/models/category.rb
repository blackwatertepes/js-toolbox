class Category < ActiveRecord::Base
  attr_accessible :name, :full_name
  
  has_many :libraries
  
  def title
    self.full_name.capitalize
  end
  
  def libs
    self.libraries.map{|library| library.name }.join(", ")
  end
end
