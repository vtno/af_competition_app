# frozen_string_literal: true
class AddTargetNumberToGame < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :target_number, :string
    remove_column :games, :name, :string
  end
end
