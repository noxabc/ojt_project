class CreateHistoryLoads < ActiveRecord::Migration[5.2]
  def change
    create_table :history_loads do |t|
      t.integer :amount_loaded
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
