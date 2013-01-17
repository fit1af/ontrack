class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email_and_password(params[:email], params[:password])
    if user.group.name == "admin"
      redirect_to projects_path, notice: "Logged in as Admin"
    elsif user.group.name == "management"
      redirect_to project_path(user.id), notice: "Logged in as Manager"
    else  #user.group.name == "member"

    end
  
  end

  def destroy
  end
end
