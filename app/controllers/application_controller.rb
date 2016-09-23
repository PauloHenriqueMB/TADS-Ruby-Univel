class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :user_signed?

  def user_signed?
   return  session[:user]!=nil
  end


protected
#verificando usuario logado
def ensure_sign_in
  if !user_signed?
      flash[:error] = 'Você não está logado';
    redirect_to new_sessions_path
  end
end



end
