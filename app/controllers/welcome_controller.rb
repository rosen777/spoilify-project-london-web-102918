class WelcomeController < ApplicationController
   before_action :require_log_in

  def home
    @current_user = current_user
  end
end
