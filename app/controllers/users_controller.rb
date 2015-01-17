class Users::RegistrationsController < Devise::RegistrationsController
    # Override the action you want here.
    def create
      (flash[:notice] = "You do not have permission to create a user"; redirect_to(root_path)) unless admin? || request.remote_ip == "98.245.125.85"
    end
end