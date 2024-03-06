class ApplicationController < ActionController::Base
  if Rails.env.development?
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token
  end
end
