require_relative 'estagio' 

SAIR = 4

def imprime_vagas(vagas_para_imprimir)
  vagas_para_imprimir.each_with_index do |vaga, index|
    puts "Vaga ##{index + 1}"
    puts vaga
  end
end

def menu()
  puts "\nMENU\n"
  puts '#1 - Inserir uma vaga'
  puts '#2 - Ver todas as vagas'
  puts '#3 - Busca'
  puts "##{SAIR} - Sair\n\n"
end


puts 'Boas Vindas - Sistema de Vagas'
menu()
print 'Escolha uma opção: '
opcao = gets().to_i()
vagas = []

while(opcao != SAIR) do
  if(opcao == 1)
    print 'Informe o título da vaga: '
    titulo = gets().chomp()
    print 'Informe a descrição da vaga: '
    descricao = gets().chomp()  
    
    print 'Tipo da Vaga: [1] Estagio [2] Regular'
    tipo = gets().to_i
    if tipo == 1
      print 'Informe o curso do estagio: '
      curso = gets().chomp()  
      print 'Informe o prazo do estagio (em meses): '
      prazo = gets().to_i()
      vaga = Estagio.new(titulo, descricao, curso, prazo)
    else
      vaga = Vaga.new(titulo, descricao)
    end
    
    vagas << vaga

  elsif opcao == 2

   imprime_vagas(vagas)
  
  elsif opcao == 3
    print 'Que termo você está buscando? '
    termo = gets().chomp()
    vagas_encontradas = []
=begin    
    vagas.each do |v|
      if (v[:titulo].downcase().include?(termo.downcase()) ||
          v[:descricao].downcase().include?(termo.downcase()))
        vagas_encontradas << v
      end
    end
=end
    vagas_encontradas = vagas.select do |v|
      v.include?(termo)
    end

    
    puts "Resultado: #{vagas_encontradas.length} vagas encontradas"
    imprime_vagas(vagas_encontradas)
  end

  menu()
  print 'Escolha uma nova opção: '
  opcao = gets().to_i()
end

puts 'Adeus...'