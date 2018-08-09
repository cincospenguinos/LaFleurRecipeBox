class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :serving_number
      t.string :source
      t.string :name

      t.timestamps
    end
  end
end
