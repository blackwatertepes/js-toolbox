class Category < ActiveRecord::Base
  attr_accessible :name, :full_name
  
  validates_presence_of :name, :full_name
  validates_uniqueness_of :name, :full_name
  
  has_many :libraries
  
  def title
    self.full_name.capitalize
  end
  
  def libs
    self.libraries.map{|library| library.name }.sort.join(", ")
  end
end
