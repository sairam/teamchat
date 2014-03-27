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
  belongs_to :team # ownership can be forwarded to another team
  belongs_to :organisation # display all rooms belonging to an organisation

  # belongs_to :user

  # visibility:
  # public within a team
  # public within an organisation
  # private within an organisation - only shared individuals / teams in that organisation can see
  # no sharing allowed outside an organisation
  # a team is represented by team:name
  # a user is represented by user:name
  # user:name is not modifyable

  # v0.2
  # a room can have a mailing list so that users can get notifications on activity
  # 1. real time
  # 2. aggregated based on user idle time
end
