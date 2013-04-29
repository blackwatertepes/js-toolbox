class Library < ActiveRecord::Base
  attr_accessible :description, :doc_url, :name, :website_url, :github_id, :author, :category_id
  
  validates_presence_of :github_id, :category_id, :author, :name
  validates_uniqueness_of :github_id
  
  has_many :statuses
  
  def status
    self.statuses.last
  end
  
  def downloads
    status.downloads || 0
  end
  
  def watchers
    status.watchers || 0
  end
  
  def forks
    status.forks || 0
  end
  
  def issues
    status.issues || 0
  end
end
