class ChangeBillsColumns < ActiveRecord::Migration[7.0]
  def up
    change_column :bills, :units_consumed, 'integer USING CAST(units_consumed AS integer)'
    change_column :bills, :balance, 'integer USING CAST(balance AS integer)'
  end

  def down
    change_column :bills, :units_consumed, :string
    change_column :bills, :balance, :string
  end
end
