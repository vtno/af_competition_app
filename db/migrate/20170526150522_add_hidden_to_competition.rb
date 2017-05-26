class AddHiddenToCompetition < ActiveRecord::Migration[5.0]
  def change
    add_column :competitions, :hidden, :boolean, default: false
  end
end
