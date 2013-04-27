class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :library

      t.timestamps
    end
  end
end
