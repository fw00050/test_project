class AddEventToRecords < ActiveRecord::Migration
  def change
    add_column :records, :event, :text
  end
end
