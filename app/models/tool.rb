# == Schema Information
#
# Table name: tools
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  prince     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tool < ApplicationRecord
end
