class CreateHistoryLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :history_logs do |t|
      t.string :last_name
      t.string :first_name

      t.timestamps
    end
  end
end
