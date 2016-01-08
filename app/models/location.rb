# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  zipcode    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ActiveRecord::Base
  has_many :users
end
