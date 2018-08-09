# == Schema Information
#
# Table name: recipes
#
#  id             :integer          not null, primary key
#  recipe_name    :string
#  serving_number :integer
#  source         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Recipe < ApplicationRecord
  validates_presence_of :recipe_name, :serving_number
  has_many :ingredients
end
