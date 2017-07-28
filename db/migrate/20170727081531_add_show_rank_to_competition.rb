class AddShowRankToCompetition < ActiveRecord::Migration[5.0]
  def change
    add_column :competitions, :show_rank, :boolean, default: true
  end
end
