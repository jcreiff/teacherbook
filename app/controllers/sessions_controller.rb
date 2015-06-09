class SessionsController < ApplicationController
  def login
    if request.post?
      teacher = Teacher.find_by_email(params[:email])
      if teacher && teacher.password == params[:password]
        session[:teacher_id] = teacher.id
        redirect to parents_path, notice: "Login Successful. Welcome, #{teacher.name[0]}."
      else
        flash.now[:notice] = "Invalid Login. Please Try Again."
      end
    end
  end

  def logout
    session[:teacher_id] = nil
    redirect_to sessions_login_path, notice: "Logout Successful."
  end

end
