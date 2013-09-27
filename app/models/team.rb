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
  # team name
  # has_many users
  # has_many rooms
end
