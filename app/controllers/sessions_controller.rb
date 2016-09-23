class SessionsController < ApplicationController
  def new
  end

  def create
      if params[:user_name] == 'paulo'
        if params[:password] == '123'
          session[:user] = 'paulo'
          flash[:notice] ='Login Efetuado!';
          redirect_to root_path and return
        end
      end
      flash[:error] = 'Não foi possivel logar!';
      redirect_to new_sessions_path and return
  end

  def destroy
    session[:user] = nil 
     flash[:error] = 'Saindo do Sistema';
      redirect_to root_path and return
  end
end
