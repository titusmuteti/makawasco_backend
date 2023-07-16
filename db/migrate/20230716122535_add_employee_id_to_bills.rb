class AddEmployeeIdToBills < ActiveRecord::Migration[7.0]
  def change
    add_reference :bills, :employee, null: true, foreign_key: true
  end
end
