class User < ActiveRecord::Base
  has_many :links, dependent: :destroy 
  has_and_belongs_to_many :skills, dependent: :destroy 
  belongs_to :location, dependent: :destroy 
  has_many :matches, dependent: :destroy 
  has_many :matched_users, through: :matches, dependent: :destroy 

  def daily_matches
    pending = pending_matches
    num = 3-pending.length
    pending << randomly_generated_matches(num, pending)
    pending.flatten
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
