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

class User < ActiveRecord::Base
  has_many :links, dependent: :destroy 
  has_and_belongs_to_many :skills, dependent: :destroy 
  belongs_to :location, dependent: :destroy 
  has_many :matches, dependent: :destroy 
  has_many :matched_users, through: :matches, dependent: :destroy 
  has_many :daily_matches

  def generate_matches
    if Time.now - self.time_of_match > 24 
      create_daily_matches
    else
      daily = DailyMatch.where("user_id = ? AND created_at >= ?", self.id, Time.zone.now.beginning_of_day)
      daily.map do |daily_match|
        User.find(daily_match.option_id)
      end
    end
  end

  def create_daily_matches
    self.time_of_match = Time.zone.now
    pending = pending_matches
    num = 3-pending.length
    pending << randomly_generated_matches(num, pending)
    pending = pending.flatten
    pending.each do |pending_match|
      DailyMatch.create(user_id: self.id, option_id: pending_match.id)
    end
  end

  def pending_matches
    User.joins(:matches).where("(matches.matched_user_id = ?) AND matches.status = 0", self.id).limit(3)
  end

  def randomly_generated_matches(num, pending)
    pending_ids = pending.pluck(:id)
    pending_ids << self.id
    User.where.not(id: pending_ids).shuffle[0...num]
  end

end
