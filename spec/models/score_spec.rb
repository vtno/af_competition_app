# == Schema Information
#
# Table name: scores
#
#  id             :integer          not null, primary key
#  score_type     :string
#  game_id        :integer
#  score1         :integer          default(0)
#  score2         :integer          default(0)
#  score3         :integer          default(0)
#  score4         :integer          default(0)
#  score5         :integer          default(0)
#  score6         :integer          default(0)
#  score7         :integer          default(0)
#  score8         :integer          default(0)
#  score9         :integer          default(0)
#  score10        :integer          default(0)
#  x_count        :integer          default(0)
#  x_and_10_count :integer          default(0)
#  ten_count      :integer          default(0)
#  nine_count     :integer          default(0)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Score, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
