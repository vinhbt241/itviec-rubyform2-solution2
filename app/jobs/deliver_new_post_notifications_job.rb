class DeliverNewPostNotificationsJob < ApplicationJob
  queue_as :default

  def perform
    User.subscribed_users.each do |user|
      NewPostNotification.create(
        recipient: user,
        params: {
          title: "New post coming out - check out now!",
          content: "Hey #{user.email}, we hope you have a good day. Check out this new post!"
        }
      )
    end
  end
end
