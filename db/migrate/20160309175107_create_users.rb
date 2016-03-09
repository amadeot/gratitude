class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone
      t.string :username
      t.string :password_digest
      t.boolean :active
      t.timestamps
      t.integer :start_range
      t.integer :end_range
    end
  end
end
