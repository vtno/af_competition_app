class AddDefaultToTotalScoreGame < ActiveRecord::Migration[5.0]
  def change
    change_column :games, :total_score, :integer, default: 0
  end
end
