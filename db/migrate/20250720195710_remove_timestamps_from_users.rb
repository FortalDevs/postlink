# frozen_string_literal: true

class RemoveTimestampsFromUsers < ActiveRecord::Migration[8.0]
  def up
    change_table :users, bulk: true do |t|
      t.remove :created_at, :updated_at
    end
  end

  def down
    change_table :users, bulk: true do |t|
      t.datetime :created_at, precision: 6, null: false, default: -> { "CURRENT_TIMESTAMP" }
      t.datetime :updated_at, precision: 6, null: false, default: -> { "CURRENT_TIMESTAMP" }
    end
  end
end
