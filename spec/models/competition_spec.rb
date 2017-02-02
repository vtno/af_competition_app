# == Schema Information
#
# Table name: competitions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :integer
#  score_type :string
#  range      :integer
#

require 'rails_helper'

RSpec.describe Competition, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
