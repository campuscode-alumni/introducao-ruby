class Vaga
  attr_reader :descricao
  attr_writer :descricao
  attr_accessor :titulo, :candidatos

  #construtor
  def initialize(titulo, descricao)
    @titulo = titulo
    @descricao = descricao
    @ativa = false
    @candidatos = []
  end

  def ativar!
    self.ativa = true 
    # data de ativacao
    # responsavel
  end

  def ativa?
    ativa()
  end

  def include?(t)

  private

  attr_accessor :ativa

end