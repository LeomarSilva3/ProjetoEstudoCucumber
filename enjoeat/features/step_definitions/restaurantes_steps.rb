  Dado("acesso a lista de restaurantes") do
    @restaurante_page.load
  end
  
  # In Line
  E("que temos os seguintes restaurantes") do |table|
    #massa de testes
    @restaurant_dat =table.hashes
  end
  
  Então("devo ver todos os restaurantes dessa lista") do
    restaurantes = @restaurante_page.list
#compara a massa de testes com os produtos
    @restaurant_dat.each_with_index do |value, index|
      expect(restaurantes[index]).to have_text value['nome'].upcase
      expect(restaurantes[index]).to have_text value['categoria']
      expect(restaurantes[index]).to have_text value['entrega']
      expect(restaurantes[index]).to have_text value['avaliacao']
    end
  end
  
  