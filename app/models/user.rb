class User < ApplicationRecord
  # scopes
  scope :subscribed_users, -> { where(subscribed: true) }

  # validations
  validates :email, uniqueness: true

  # associations
  has_many :new_post_notifications, class_name: 'NewPostNotification', as: :recipient


  def last_new_post_notification
    new_post_notifications.order(created_at: :desc).first
  end
end
