# == Schema Information
#
# Table name: menus
#
#  id         :integer          not null, primary key
#  menu_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Menu < ApplicationRecord
  has_many :recipes
end
