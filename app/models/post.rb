class Post < ApplicationRecord
  # callbacks
  after_create :deliver_notifications

  def deliver_notifications
    DeliverNewPostNotificationsJob.perform_later
  end
end
