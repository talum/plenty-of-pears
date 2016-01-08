# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  title      :string
#  level      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Skill < ActiveRecord::Base
  has_and_belongs_to_many :users
end
