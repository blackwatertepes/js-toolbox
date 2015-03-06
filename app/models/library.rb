class Library < ActiveRecord::Base
  attr_accessible :description, :doc_url, :name, :website_url, :github_id, :author, :category_id
  
  validates_presence_of :github_id, :category_id, :author, :name
  # validates_uniqueness_of :github_id
  
  belongs_to :category
  
  has_many :statuses
  has_many :likes
  
  scope :by_watchers, includes(:statuses).order("statuses.watchers DESC")
  
  def status
    statuses.where('watchers > ?', 0).last
  end
  
  def status_prev
    statuses.where('watchers > ?', 0).first
  end
  
  def downloads
    status.downloads || 0
  end
  
  def watchers
    status ? status.watchers || 0 : 0
  end

  def watchers_prev
    status_prev ? status_prev.watchers || 0 : 0
  end
  
  def watchers_change
    (watchers - watchers_prev) / watchers.to_f * 100
  end
  
  def forks
    status ? status.forks || 0 : 0
  end

  def forks_prev
    status_prev ? status_prev.forks || 0 : 0
  end
  
  def forks_change
    (forks - forks_prev) / forks.to_f * 100
  end
  
  def issues
    status ? status.issues || 0 : 0
  end

  def issues_prev
    status_prev ? status_prev.issues || 0 : 0
  end
  
  def issues_change
    (issues - issues_prev) / issues.to_f * 100
  end
  
  def recent_pushes
    statuses.select{|status| status.pushed }.count
  end

  def github_url
    "http://github.com/#{self.author}/#{self.name}"
  end

  def last_sync
    status ? status.updated_at : updated_at
  end
end
