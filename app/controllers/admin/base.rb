class Admin::Base < ApplicationController
  private def current_administrator
    if session[:administrator]
      @current_administrator ||=
        Administrator.find_by(id :session[:administrator_id])
    end
  end

  helper_method :current_administrator
end