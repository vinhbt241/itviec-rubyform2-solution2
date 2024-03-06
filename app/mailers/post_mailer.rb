class PostMailer < ApplicationMailer
  def new_post_email
    @user = params[:user]
    @title = params[:title]
    @content = params[:content]
    mail(to: @user.email, subject: @title)
  end
end
