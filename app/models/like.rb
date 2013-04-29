class Like < ActiveRecord::Base
  validates_presence_of :library_id
  
  belongs_to :library
end
