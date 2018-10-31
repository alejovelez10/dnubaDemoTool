# == Schema Information
#
# Table name: acta
#
#  id                 :bigint(8)        not null, primary key
#  fecha              :date
#  description        :text
#  signature_delivery :text
#  signature_requests :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  employed_id        :integer
#

class Actum < ApplicationRecord
 	has_many :items_tools, inverse_of: :actum, dependent: :destroy
	accepts_nested_attributes_for :items_tools, :allow_destroy => true
	belongs_to :employed, optional: true
end
