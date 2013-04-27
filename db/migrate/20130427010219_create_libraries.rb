class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :author
      t.text :description
      t.string :website_url
      t.string :doc_url
      t.string :github_url
      t.references :category

      t.timestamps
    end
  end
end
