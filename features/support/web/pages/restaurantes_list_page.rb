class RestautantesPage
    include Capybara::DSL

    #chama pagina dos restaurantes
    def load
        visit '/restaurants'
    end

    def list
        all('.col-xs-12')
    end

    def restaurante(restaurante)
        find('.col-xs-12', text: restaurante.upcase).click
    end

    


end