class FixTimestampsOnUsers < ActiveRecord::Migration[8.0]
  def change
    change_column_default :users, :created_at, from: -> { "CURRENT_TIMESTAMP" }, to: nil
    change_column_default :users, :updated_at, from: -> { "CURRENT_TIMESTAMP" }, to: nil
  end
end
