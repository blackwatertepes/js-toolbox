class Status < ActiveRecord::Base
  attr_accessible :downloads, :forks, :issues, :watchers, :library_id, :pushed
  
  validates_presence_of :library_id
  
  belongs_to :library
end
