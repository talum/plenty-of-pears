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

class Match < ActiveRecord::Base
  belongs_to :user
  belongs_to :matched_user, :class_name => "User"
end
