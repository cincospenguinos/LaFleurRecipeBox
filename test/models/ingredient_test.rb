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

require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
