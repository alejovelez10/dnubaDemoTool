# == Schema Information
#
# Table name: employeds
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  cedula     :integer
#  cargo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Employed < ApplicationRecord
	has_many :Actum
	#belongs_to :employed_one, :class_name => 'Employed'
	#belongs_to :employed_two, :class_name => 'Employed'
end
