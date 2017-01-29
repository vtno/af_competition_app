class AddTotalScoreToScore < ActiveRecord::Migration[5.0]
  def change
    add_column :scores, :total_score, :integer, default: 0
  end
end
