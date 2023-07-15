class BillSerializer < ActiveModel::Serializer
  attributes :id, :meter_no, :date_read, :previous_reading, :current_reading, :units_consumed, :balance, :date_paid, :client_id
end
