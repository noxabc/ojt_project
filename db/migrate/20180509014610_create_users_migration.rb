class CreateUsersMigration < ActiveRecord::Migration[5.2]
  def change
    create_table :users_migrations do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.string :email
      t.string :password_digest
      t.string :mobile_number
      t.string :status
      t.integer :balance_load_id
      t.integer :history_log_id
      t.integer :trip_transaction_id
      t.integer :history_load_id

      t.timestamps
    end
  end
end
