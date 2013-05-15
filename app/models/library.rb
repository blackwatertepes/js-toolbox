class Library < ActiveRecord::Base
  attr_accessible :description, :doc_url, :name, :website_url, :github_id, :author, :category_id
  
  validates_presence_of :github_id, :category_id, :author, :name
  # validates_uniqueness_of :github_id
  
  belongs_to :category
  
  has_many :statuses
  has_many :likes
  
  scope :by_watchers, includes(:statuses).order("statuses.watchers DESC")
  
  def status
    statuses.first
  end
  
  def status_prev
    statuses.last
  end
  
  def downloads
    status.downloads || 0
  end
  
  def watchers
    status.watchers || 0
  end
  
  def watchers_change
    (status.watchers - status_prev.watchers) / status.watchers.to_f * 100
  end
  
  def forks
    status.forks || 0
  end
  
  def forks_change
    (status.forks - status_prev.forks) / status.forks.to_f * 100
  end
  
  def issues
    status.issues || 0
  end
  
  def issues_change
    (status.issues - status_prev.issues) / status.issues.to_f * 100
  end
  
  def recent_pushes
    statuses.select{|status| status.pushed }.count
  end

  def github_url
    "http://github.com/#{self.author}/#{self.name}"
  end
end
