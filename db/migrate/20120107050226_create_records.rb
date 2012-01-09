class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.date :date_seen
      t.string :gender

      t.timestamps
    end
  end
end
