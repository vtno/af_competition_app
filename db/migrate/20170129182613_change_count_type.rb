# frozen_string_literal: true
class ChangeCountType < ActiveRecord::Migration[5.0]
  def change
    remove_column :scores, :x_count, :integer
    remove_column :scores, :x_and_10_count, :integer
    remove_column :scores, :ten_count, :integer
    remove_column :scores, :nine_count, :integer

    add_column :scores, :x_count, :integer, default: 0
    add_column :scores, :x_and_10_count, :integer, default: 0
    add_column :scores, :ten_count, :integer, default: 0
    add_column :scores, :nine_count, :integer, default: 0
  end
end
