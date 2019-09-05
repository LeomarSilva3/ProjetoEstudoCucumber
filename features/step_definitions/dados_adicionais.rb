
Então("vejo os dados adicionais do restaurante") do |table|
    #massa de testes
    infos =  table.rows_hash
    
    #detalhes do produto
    detail = @cardapio_page.details
    expect(detail).to have_text infos['categoria']
    expect(detail).to have_text infos['descricao']
    expect(detail).to have_text infos['horario']
end