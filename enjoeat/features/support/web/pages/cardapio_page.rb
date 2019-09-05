class CardapioPage
    include Capybara::DSL

    def items_cardapio
        all('.menu-item-info-box-content')
    end 
    
    def details
        find('#detail')
    end

    def adicionando_items()
        @produtos.each do |p|
            p["quantidade"].to_i.times do 
              find(".menu-item-info-box", text: p["name"].upcase).find(".add-to-cart").click
              
            end
            
          end
    end

end