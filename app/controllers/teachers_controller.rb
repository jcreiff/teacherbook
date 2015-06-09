class TeachersController < ApplicationController
  before_action :logged_in?

  def home
  end

  def edit
  end

  def update
  end

  private

    def logged_in?
      Teacher.find_by_id(session[:teacher_id]) ? true : (redirect_to sessions_login_path, notice: "Please Login.")
    end

end
