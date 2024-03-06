class UsersController < ApplicationController
  def unsubscribe
    @user = User.find(params[:id])

    if Users::UnsubscribeService.call(@user)
      redirect_to unsubscribed_path
    else
      redirect_to failed_path
    end
  end
end
