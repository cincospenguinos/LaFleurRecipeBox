# == Schema Information
#
# Table name: ingredients
#
#  id              :integer          not null, primary key
#  amount_number   :float
#  amount_type     :integer
#  ingredient_name :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  recipe_id       :integer
#

class Ingredient < ApplicationRecord
  enum amount_type: [ :number, :ounces, :pounds, :milliliters, :liters, :fluid_ounces, :grams, :kilograms, :cups, :teaspoons, :table_spoons ]
  validates_presence_of :amount_number, :ingredient_name
  belongs_to :recipe

  ## Add one ingredient to another
  def +(other) # TODO: Should we do something fancy where we convert liters to milliliters or something like that?
    if self.amount_type == other.amount_type
      Ingredient.new(amount_type: self.amount_type, ingredient_name: self.ingredient_name, amount_number: self.amount_number + other.amount_number)
    else
      nil
    end
  end
end
