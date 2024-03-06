class Notification < ApplicationRecord
  # associations
  belongs_to :recipient, polymorphic: true
end
