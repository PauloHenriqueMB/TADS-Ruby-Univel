class Mensagem
  @@mensagens=[]
  attr_accessor :nome, :email, :assunto, :mensagem

  def self.all
    @@mensagens
  end

  def self.destroy_all
    @@mensagens=[]
  end



  def salvar
    @@mensagens << self

  end

end


