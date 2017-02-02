# == Schema Information
#
# Table name: scores
#
#  id             :integer          not null, primary key
#  score_type     :string
#  game_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  score1         :integer          default(["0", "0", "0"]), is an Array
#  score2         :integer          default(["0", "0", "0"]), is an Array
#  score3         :integer          default(["0", "0", "0"]), is an Array
#  score4         :integer          default(["0", "0", "0"]), is an Array
#  score5         :integer          default(["0", "0", "0"]), is an Array
#  score6         :integer          default(["0", "0", "0"]), is an Array
#  score7         :integer          default(["0", "0", "0"]), is an Array
#  score8         :integer          default(["0", "0", "0"]), is an Array
#  score9         :integer          default(["0", "0", "0"]), is an Array
#  score10        :integer          default(["0", "0", "0"]), is an Array
#  x_count        :integer          default(0)
#  x_and_10_count :integer          default(0)
#  ten_count      :integer          default(0)
#  nine_count     :integer          default(0)
#  total_score    :integer          default(0)
#

require 'rails_helper'

RSpec.describe Score, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
