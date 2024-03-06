class NewPostNotification < Notification
  # callbacks
  after_create :push_to_recipient

  def push_to_recipient
    PostMailer.with(
      user: recipient,
      title: params['title'],
      content: params['content'],
    ).new_post_email.deliver_now
  end
end
