class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :meter_no
      t.string :date_read
      t.string :previous_reading
      t.string :current_reading
      t.string :units_consumed
      t.string :balance
      t.string :date_paid
      t.integer :client_id

      t.timestamps
    end
  end
end
