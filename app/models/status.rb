class Status < ActiveRecord::Base
  attr_accessible :downloads, :forks, :issues, :watchers
end
