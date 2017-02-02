# frozen_string_literal: true
class ChangeDefaultScoreToFiveRound < ActiveRecord::Migration[5.0]
  def change
    remove_column :scores, :score1, :interger
    remove_column :scores, :score2, :interger
    remove_column :scores, :score3, :interger
    remove_column :scores, :score4, :interger
    remove_column :scores, :score5, :interger
    remove_column :scores, :score6, :interger
    remove_column :scores, :score7, :interger
    remove_column :scores, :score8, :interger
    remove_column :scores, :score9, :interger
    remove_column :scores, :score10, :integer
    remove_column :scores, :score11, :integer
    remove_column :scores, :score12, :integer
    
    add_column :scores, :score1, :integer, array: true, default: [0, 0, 0, 0, 0]
    add_column :scores, :score2, :integer, array: true, default: [0, 0, 0, 0, 0]
    add_column :scores, :score3, :integer, array: true, default: [0, 0, 0, 0, 0]
    add_column :scores, :score4, :integer, array: true, default: [0, 0, 0, 0, 0]
    add_column :scores, :score5, :integer, array: true, default: [0, 0, 0, 0, 0]
    add_column :scores, :score6, :integer, array: true, default: [0, 0, 0, 0, 0]
    add_column :scores, :score7, :integer, array: true, default: [0, 0, 0, 0, 0]
    add_column :scores, :score8, :integer, array: true, default: [0, 0, 0, 0, 0]
    add_column :scores, :score9, :integer, array: true, default: [0, 0, 0, 0, 0]
    add_column :scores, :score10,:integer, array: true, default: [0, 0, 0, 0, 0]
    add_column :scores, :score11,:integer, array: true, default: [0, 0, 0, 0, 0]
    add_column :scores, :score12,:integer, array: true, default: [0, 0, 0, 0, 0]
  end
end
