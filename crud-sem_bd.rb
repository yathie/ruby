#exemplo codecademy crud simples, sem bd, tempo de execução


movies = {
  harry: 2,
  panda: 7,
  dragao: 9
}

puts "opcoes: \nadd\nupdate\ndelete\ndisplay"
choice = gets.chomp
 
 case choice
  when "add"
    puts "titulo: "
    title = gets.chomp
    puts "nota: "
    rating = gets.chomp

    aux = true
    movies.select{ |filme,nota|
      filme == title.to_sym
      aux = false
    }
    puts "aux = #{aux}"
    if aux
      #adiciona title e rating no hash movies
      #.to_sym -> string para simbolo -- .to_i -> string para inteiro
     movies[title.to_sym]=rating.to_i
    end

    puts movies
    
  #altera nota do filme na hash
  when "update"
    puts "título a ser alterado: "
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "filme nao existe"
    else
      puts "nova nota: "
      rating =gets.chomp
      movies[title.to_sym]=rating.to_i
    end
    puts movies
  
  #imprime chaves/valores contidos em 'movies'
  when "display"
    movies.each { |movie, rating|
      puts "#{movie}: #{rating}"
    }

  #remover uma chave/valor da hash  
  when "delete"
    puts "qual filme remover?"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "filme nao existe"
    else
      movies.delete(title.to_sym)
    end
    puts movies

  else
    puts "Error!"
end
