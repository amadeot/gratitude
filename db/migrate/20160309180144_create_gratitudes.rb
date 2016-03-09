class CreateGratitudes < ActiveRecord::Migration
  def change
    create_table :gratitudes do |t|
      t.date :message_date
      t.string :message
      t.references :user
    end
  end
end
