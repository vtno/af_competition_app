class AddScoreTypeAndRangeToCompetition < ActiveRecord::Migration[5.0]
  def change
    add_column :competitions, :score_type, :string
    add_column :competitions, :range, :integer
  end
end
