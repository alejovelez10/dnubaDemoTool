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
#

class Actum < ApplicationRecord
 	has_many :ItemsTool, inverse_of: :actum, dependent: :destroy
	accepts_nested_attributes_for :ItemsTool, :allow_destroy => true
end
