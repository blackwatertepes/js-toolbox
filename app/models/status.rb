class Status < ActiveRecord::Base
  attr_accessible :downloads, :forks, :issues, :watchers, :library_id
  
  validates_presence_of :library_id
end
