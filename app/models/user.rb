# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  nickname   :string(255)      not null
#  name       :string(255)      not null
#  team_id    :integer          not null
#  role       :integer
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  has_and_belongs_to_many :teams
  belongs_to :organisation
end
