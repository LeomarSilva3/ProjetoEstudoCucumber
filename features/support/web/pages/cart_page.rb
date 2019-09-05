class CartPage
    include Capybara::DSL
    #metodo que traz o box do carrinho
    def box
        find("#shopping-cart")
    end

    #busca Total do carrinho
    def total
       box.find("tr", text: "Total").find("td")
    end

    #remove item do carrinho
    def remove_item(item)
        box.all("table tbody tr")[item].find(".danger").click
    end

    def limpar_carrinho
        find(".btn-danger").click
    end


end
