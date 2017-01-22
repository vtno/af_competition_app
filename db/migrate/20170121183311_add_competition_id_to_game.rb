class AddCompetitionIdToGame < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :competition_id, :integer
  end
end
