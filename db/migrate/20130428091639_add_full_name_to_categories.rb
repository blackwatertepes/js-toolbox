class AddFullNameToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :full_name, :string
  end
end
