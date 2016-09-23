class HomeController < ApplicationController
  before_action :ensure_sign_in, only: [:profile]

  def index

  end

  def about
    
  end

  def contact
  end

  def login

  end

  def news
  
  end


  def new_contact
    @contato = Mensagem.new
    @contato.nome=params[:nome]
    @contato.email=params[:email]
    @contato.assunto=params[:assunto]
    @contato.mensagem=params[:mensagem]
    @contato.salvar

    render:contact
    
  end

  def delete
       Mensagem.destroy_all
    render:contact
  end
  
  def profile

  end
end