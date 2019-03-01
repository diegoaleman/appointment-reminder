class Physician < ApplicationRecord
  has_many :appointments, dependent: :destroy
end
