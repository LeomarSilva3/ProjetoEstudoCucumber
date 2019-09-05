
Dado("que o produto desejado e {string}") do |produto|
    @produto = produto

end

Dado("o valor do produto e {string}") do |valor|
  @valor = valor

end
#partner para concatenar string
Quando("eu adiciono {int} unidade\\(s) ao carrinho") do |quantidade|
  #fluxo de repetiçao
  quantidade.to_i.times do 
    find(".menu-item-info-box", text: @produto.upcase).find(".add-to-cart").click
  end
 
end

Então("deve ser adiconado {int} unidade\\(s) deste item") do |quantidade|
  expect(@cart_page.box).to have_text "(#{quantidade}x) #{@produto}"
end

Então("o valor total de produtos do carrinho deve ser {string}") do |valor_total|
  expect(@cart_page.total.text).to eql valor_total
end

## adiciono todos os items
Dado("que os produtos desejados são") do |table|
     @produtos = table.hashes
     
end

Quando("eu adiciono todos os items ao carrinho") do
  
  @produtos.each do |p|
    p["quantidade"].to_i.times do 
      find(".menu-item-info-box", text: p["name"].upcase).find(".add-to-cart").click
      
    end
    
  end
end

Então("vejo todos os items no carrinho") do
  @produtos.each do |p|
      expect(@cart_page.box).to have_text "(#{p["quantidade"]}x) #{p["name"]}"
    
  end  
end


## Remover


Dado("que tenho os seguintes items no carrinho") do |table|
  @produtos = table.hashes
  #Dynamic steps
  steps %{
    Quando eu adiciono todos os items ao carrinho
  }

end

Quando("removo somente o {int}") do |item|
  @cart_page.remove_item(item)
end


##remover todos os items

Quando("removo todos os items do carrinho") do
  
  @produtos.each_with_index do |value, item|
    @cart_page.remove_item(item) 
  end
end

Então("devo visualizar a seguinte mensagem {string}") do |messagem|
  msg = messagem
  expect(@cart_page.box).to have_text msg 
end


#limpar carrinho

Quando("eu limpo o carrinho") do
  @cart_page.limpar_carrinho
end

#fechar carrinho

Dado("que adicionei os seguintes items do carrinho:") do |table|
    @produtos = table.hashes
    #Dynamic steps
    steps %{
      Quando eu adiciono todos os items ao carrinho
    }
end

Quando("eu fecho o meu carrinho") do
    @close_carrinho.close
end

Então("o valor total de items deve ser igual a {string}") do |total_items|
  expect(
    @close_carrinho.validation_product[0]
  ).to have_text total_items
  
end

Então("o valor do frete deve ser igual a {string}") do |frete|
  expect(
    @close_carrinho.validation_product[1]
  ).to have_text frete
end

Então("o valor total do carrinjho deve ser igual a {string}") do |valor_total|
  expect(
    @close_carrinho.validation_product[2]
  ).to have_text valor_total
end