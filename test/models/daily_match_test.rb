# == Schema Information
#
# Table name: daily_matches
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  option_1   :integer
#  option_2   :integer
#  option_3   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DailyMatchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
