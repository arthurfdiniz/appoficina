number = {
  "Ford": "Mustang",
  "Chevrolet": "Camaro",
  "Toyota": "Corolla",
  "Honda": "Civic",
  "Nissan": "Sentra",
  "BMW": "Série 3",
  "Mercedes-Benz": "Classe C",
  "Audi": "A4",
  "Volkswagen": "Jetta",
  "Hyundai": "Elantra",
  "Kia": "Optima",
  "Fiat": "Argo",
  "Renault": "Duster",
  "Peugeot": "208",
  "Volvo": "XC60"
}
loop do
  puts "\n\n******** O QUE DESEJA FAZER? ********\n\n"
  sleep(2)
  puts "---------------------"
  puts "MENU"
  puts "1 - Listar veículos."
  puts "2 - Adicionar veículos."
  puts "3 - Consultar disponibilidade."
  puts "4 - Editar veículo."
  puts "0 - Parar."
  puts "---------------------"

  selection = gets.chomp.to_i

  if selection == 0
    system "clear"
    puts "\n\nENCERRANDO APLICATIVO\n\n"
    sleep(0.5)
    puts "."
    sleep(0.5)
    puts "."
    sleep(0.5)
    puts "."
    sleep(0.5)
    puts "\n\n|||| APLICATIVO ENCERRADO |||||\n\n"
    break

  else
    case selection
    when 1
      system "clear"
      puts "TEMOS OS SEGUINTES CARROS REGISTRADOS"
      puts ""
      sleep(1)
      number.sort.each do |key, value|
        puts "Carro da marca #{key} = #{value}"
      end

    when 2
      system "clear"
      puts "- Digite a marca do veículo: "
      key = gets.chomp
      puts "Digite o modelo do veículo: "
      value = gets.chomp
      number[key] = value

      system "clear"
      puts "--------------------"
      puts "|VEICULO ADICIONADO|"
      puts "--------------------"

    when 3
      system "clear"
      puts "\n\nMARCAS DISPONÍVEIS:\n\n"
      number.each do |key, value|
        puts "#{key}"
      end
      puts "\nQual marca você quer consultar?"
      consulta = gets.chomp.to_sym
      consultas = number.select do |key, value|
      key == consulta
      end

      system "clear"

      if consultas.empty?
        puts "-------------------------------"
        puts "|NÃO TRABALHAMOS COM ESTA MARCA|"
        puts "|      TENTE NOVAMENTE         |"
        puts "--------------------------------"
      else
        consultas.each do |marca, modelo|
        puts "\nNa marca #{marca} temos o modelo #{modelo} disponível."
        end
      end

    when 4
        system "clear"
        puts "\n\nVEÍCULOS:\n\n"
        number.each do |key, value|
        puts "#{key} = #{value}"
      end
        sleep(2)
        puts "\n \nQual marca vocë quer editar?"
        chave = gets.chomp.to_sym
        puts "Agora digite o modelo do carro: "
        valor = gets.chomp

      if number.key?(chave)
         number[chave] = valor
         system "clear"
         puts "\n\nVEÍCULO EDITADO\n\n"
      else
        system "clear"
        puts "----------------------------------"
        puts "|NÃO TEMOS ESSA MARCA EM REGISTRO|"
        puts "|      TENTE NOVAMENTE           |"
        puts "----------------------------------"
      end
    end
  end
end




