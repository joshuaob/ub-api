class Enquiry < ApplicationRecord
  validates :first_name, presence: true
end
