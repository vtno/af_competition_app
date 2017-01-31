# frozen_string_literal: true
class AddRound11and12ToScore < ActiveRecord::Migration[5.0]
  def change
    add_column :scores, :score11, :integer, array: true, default: [0, 0, 0]
    add_column :scores, :score12, :integer, array: true, default: [0, 0, 0]
  end
end
