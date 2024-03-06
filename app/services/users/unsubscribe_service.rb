module Users
  class UnsubscribeService < BaseService
    def initialize(user)
      @user = user
    end

    def call
      if @user.last_new_post_notification&.created_at > 3.days.ago
        @user.update(subscribed: false)
        return true
      end
      false
    end
  end
end