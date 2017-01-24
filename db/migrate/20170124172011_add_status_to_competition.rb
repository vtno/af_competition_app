class AddStatusToCompetition < ActiveRecord::Migration[5.0]
  def change
    add_column :competitions, :status, :integer
  end
end
