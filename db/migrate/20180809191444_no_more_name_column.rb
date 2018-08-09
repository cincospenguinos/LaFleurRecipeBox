class NoMoreNameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :ingredients, :name, :ingredient_name
    rename_column :recipes, :name, :recipe_name
    rename_column :menus, :name, :menu_name
  end
end
