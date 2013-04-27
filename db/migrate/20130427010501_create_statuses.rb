class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :downloads
      t.integer :watchers
      t.integer :forks
      t.integer :issues
      t.references :library

      t.timestamps
    end
  end
end
