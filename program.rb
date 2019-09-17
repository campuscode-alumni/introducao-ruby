puts 'Boas Vindas - Sistema de Vagas'

puts '#1 - Inserir uma vaga'
puts '#2 - Ver todas as vagas'
puts '#3 - Sair'

print 'Escolha uma opção: '
opcao = gets().to_i()
vagas = []

while(opcao != 3) do
  if(opcao == 1)
    print 'Informe o título da vaga: '
    titulo = gets()
    print 'Informe a descrição da vaga: '
    descricao = gets()
    #vaga = "titulo: " + titulo + " descricao: " + descricao 
    vaga = "titulo: #{titulo}\ndescricao: #{descricao}"
    vagas << vaga
  elsif opcao == 2

    vagas.each_with_index do |vaga, index|
      puts "Vaga ##{index + 1}"
      puts vaga
      puts '-------------------------'
    end



  end
  print 'Escolha uma nova opção: '
  opcao = gets().to_i()
end

puts 'Adeus...'