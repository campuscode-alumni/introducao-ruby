class Vaga
  attr_reader :descricao
  attr_writer :descricao
  attr_accessor :titulo, :candidatos, :empresa

  #construtor
  def initialize(titulo, descricao, empresa)
    @titulo = titulo
    @descricao = descricao
    @ativa = false
    @candidatos = []
    @empresa = empresa
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
    titulo.downcase.include?(t) || descricao.downcase.include?(t)
  end

  def to_s
    "\n#{titulo}\n\n#{descricao}\nEmpresa: #{empresa.nome}\n\n"
  end

  private

  attr_accessor :ativa

end