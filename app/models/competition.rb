# == Schema Information
#
# Table name: competitions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :string
#

class Competition < ApplicationRecord
  has_many :games
  enum status: %w(started finished)
end
