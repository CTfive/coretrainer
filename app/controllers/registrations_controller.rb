class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(resource)
    if resource.role == 0
      "/clients/new"
    elsif resource.role == 1
      "/trainers/new"
    end
  end
end
