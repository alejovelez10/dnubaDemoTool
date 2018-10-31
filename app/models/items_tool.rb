# == Schema Information
#
# Table name: items_tools
#
#  id           :bigint(8)        not null, primary key
#  tools_id     :integer
#  acta_id      :integer
#  quantity     :integer
#  unit_prince  :integer
#  total_prince :integer
#  firm         :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  actum_id     :integer
#

class ItemsTool < ApplicationRecord
	belongs_to :actum , inverse_of: :items_tools
	belongs_to :tools , :class_name => 'Tool'
end
