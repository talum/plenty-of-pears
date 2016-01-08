# == Schema Information
#
# Table name: matches
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  matched_user_id :integer
#  status          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
