# frozen_string_literal: true
class ConvertScoreAttrToArray < ActiveRecord::Migration[5.0]
  def change
    remove_column :scores, :score1, :integer
    remove_column :scores, :score2, :integer
    remove_column :scores, :score3, :integer
    remove_column :scores, :score4, :integer
    remove_column :scores, :score5, :integer
    remove_column :scores, :score6, :integer
    remove_column :scores, :score7, :integer
    remove_column :scores, :score8, :integer
    remove_column :scores, :score9, :integer
    remove_column :scores, :score10, :integer
    remove_column :scores, :x_count, :integer
    remove_column :scores, :x_and_10_count, :integer
    remove_column :scores, :ten_count, :integer
    remove_column :scores, :nine_count, :integer
    add_column :scores, :score1, :integer, array: true, default: [0, 0, 0]
    add_column :scores, :score2, :integer, array: true, default: [0, 0, 0]
    add_column :scores, :score3, :integer, array: true, default: [0, 0, 0]
    add_column :scores, :score4, :integer, array: true, default: [0, 0, 0]
    add_column :scores, :score5, :integer, array: true, default: [0, 0, 0]
    add_column :scores, :score6, :integer, array: true, default: [0, 0, 0]
    add_column :scores, :score7, :integer, array: true, default: [0, 0, 0]
    add_column :scores, :score8, :integer, array: true, default: [0, 0, 0]
    add_column :scores, :score9, :integer, array: true, default: [0, 0, 0]
    add_column :scores, :score10, :integer, array: true, default: [0, 0, 0]
    add_column :scores, :x_count, :integer, array: true, default: [0, 0, 0]
    add_column :scores, :x_and_10_count, :integer, array: true, default: [0, 0, 0]
    add_column :scores, :ten_count, :integer, array: true, default: [0, 0, 0]
    add_column :scores, :nine_count, :integer, array: true, default: [0, 0, 0]
  end
end
