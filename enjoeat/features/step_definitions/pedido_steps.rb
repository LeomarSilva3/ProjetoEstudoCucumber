
Dado("que eu fechei o pediso com os items:") do |table|
    @produtos = table.hashes
    #Dynamic steps
    steps %{
      Quando eu adiciono todos os items ao carrinho
    }
    @close_carrinho.close
end

Dado("informei os meus dados de entrega:") do |table|
    
    user = table.rows_hash
    @close_carrinho.fill_user_data(user)

end
Quando("eu finalizo o pedido com {string}") do |payment|
    
    @close_carrinho.checkout(payment)

end

Então("devo ver a segunte mensagem") do |msg|
    expect(@close_carrinho.sumary).to have_text msg
end