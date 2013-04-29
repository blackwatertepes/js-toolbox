class AddPushedToStatuses < ActiveRecord::Migration
  def change
    add_column :statuses, :pushed, :boolean
  end
end
