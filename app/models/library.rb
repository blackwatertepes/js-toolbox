class Library < ActiveRecord::Base
  attr_accessible :description, :doc_url, :github_url, :name, :website_url
end