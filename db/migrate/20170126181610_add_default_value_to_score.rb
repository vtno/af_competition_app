class AddDefaultValueToScore < ActiveRecord::Migration[5.0]
  def change
    change_column :scores, :score1, :integer, default: 0
    change_column :scores, :score2, :integer, default: 0
    change_column :scores, :score3, :integer, default: 0
    change_column :scores, :score4, :integer, default: 0
    change_column :scores, :score5, :integer, default: 0
    change_column :scores, :score6, :integer, default: 0
    change_column :scores, :score7, :integer, default: 0
    change_column :scores, :score8, :integer, default: 0
    change_column :scores, :score9, :integer, default: 0
    change_column :scores, :score10, :integer, default: 0
    change_column :scores, :x_count, :integer, default: 0
    change_column :scores, :x_and_10_count, :integer, default: 0
    change_column :scores, :ten_count, :integer, default: 0
    change_column :scores, :nine_count, :integer, default: 0
  end
end
