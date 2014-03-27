# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Team < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :rooms
end
