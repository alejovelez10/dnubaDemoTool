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

require 'test_helper'

class ActumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
