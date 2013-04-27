class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.integer :github_id
      t.string :name
      t.string :author
      t.text :description
      t.string :website_url
      t.string :doc_url
      t.references :category
      t.datetime :pushed_at

      t.timestamps
    end
  end
end
