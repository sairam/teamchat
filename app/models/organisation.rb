# == Schema Information
#
# Table name: organisations
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Organisation < ActiveRecord::Base
  # team name
  has_many :teams
  has_many :users, :through => :teams
  has_many :rooms, :through => :teams
end
