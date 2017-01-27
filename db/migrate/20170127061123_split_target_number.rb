# frozen_string_literal: true
class SplitTargetNumber < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :target_number, :string
    add_column :games, :target_number, :integer
    add_column :games, :target_slot, :string
  end
end
