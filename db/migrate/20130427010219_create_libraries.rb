class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :name
      t.text :description
      t.string :website_url
      t.string :doc_url
      t.string :github_url

      t.timestamps
    end
  end
end
