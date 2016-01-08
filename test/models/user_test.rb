# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  name             :string
#  location_id      :integer
#  match_radius     :integer
#  current_project  :string
#  provider         :string
#  uid              :string
#  oauth_token      :string
#  oauth_expires_at :string
#  profile_picture  :string
#  time_of_match    :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
