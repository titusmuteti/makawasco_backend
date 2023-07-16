class ModifyEmployeeIdToBillsisNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :bills, :employee_id, true
  end
end
