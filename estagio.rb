require_relative 'vaga'

class Estagio < Vaga
  attr_accessor :prazo, :curso
    
  def initialize(titulo, descricao, curso, prazo)
    super(titulo, descricao)
    @curso = curso
    @prazo = prazo
  end


end