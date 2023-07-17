class Bill < ApplicationRecord
    belongs_to :client
    belongs_to :employee

    validates :meter_no, presence: true, uniqueness: true

end
