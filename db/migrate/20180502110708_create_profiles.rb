class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.string :email
      t.string :password_digest
      t.string :mobile_number
      t.string :status

      t.timestamps
    end
  end
end
