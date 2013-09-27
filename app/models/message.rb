# == Schema Information
#
# Table name: messages
#
#  id           :integer          not null, primary key
#  team_id      :integer          not null
#  room_id      :integer          not null
#  user_id      :integer          not null
#  nickname     :string(255)      not null
#  message      :text             not null
#  message_type :string(255)      not null
#  created_at   :datetime
#  updated_at   :datetime
#

class Message < ActiveRecord::Base
  belongs_to :team
  belongs_to :room
  belongs_to :user

  MessageTypes = %w{inform message}
  # inform -> announcement about change of name of room etc.
  # message -> actual message sent out by user

  # only message is sent. others are populated based on user_id and room_id
end
