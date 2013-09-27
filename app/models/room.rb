# == Schema Information
#
# Table name: rooms
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  team_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Room < ActiveRecord::Base
  belongs_to :team
end
