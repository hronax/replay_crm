module Authorized
  def authorize_admin!
    unless signed_in? && current_user.admin?
      flash_not_authorized
    end
  end

  def authorize_manager!
    unless signed_in? && current_user.manager?
      flash_not_authorized
    end
  end

  def authorize!
    unless signed_in?
      flash_not_authorized
    end
  end

  def unauthorized!
    flash_not_authorized
  end

  private

  def flash_not_authorized
    flash.now[:error] = "You are not authorized!"
    redirect_to new_user_session_path
  end
end
