Quando("escolho o restaurante {string}") do |restaurante|
  @restaurante_page.restaurante(restaurante)
end
  
Então("vejo so seguintes items disponiveis no cardapio") do |table|
 #produtos do cardapio
  produtos = @cardapio_page.items_cardapio

  #massa de testes
  produtos_cardapio =  table.hashes

  #comparação da massa de testes com os produtos
  produtos_cardapio.each_with_index do |value,index|
      expect(produtos[index]).to have_text value['produto']
      expect(produtos[index]).to have_text value['descricao']
      expect(produtos[index]).to have_text value['valor'] 
  end
end