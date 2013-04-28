class Status < ActiveRecord::Base
  attr_accessible :downloads, :forks, :issues, :watchers, :library_id
end
