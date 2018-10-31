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

require 'test_helper'

class EmployedTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
