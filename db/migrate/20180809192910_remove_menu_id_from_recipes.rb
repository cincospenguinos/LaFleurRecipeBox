class RemoveMenuIdFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :menu_id
  end
end
