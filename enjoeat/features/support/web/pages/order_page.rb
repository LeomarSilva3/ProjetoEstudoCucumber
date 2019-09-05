class OrderPage
    include Capybara::DSL

    def close
        click_link "Fechar Pedido"
    end

    def validation_product
        #
       div = find("div[class*=col-sm-6]", text: "Frete e Total");
       div.all("table tbody tr")
    end

    def fill_user_data (user)
        find("input[formcontrolname=name]").set user[:nome]
        find("input[formcontrolname=email]").set user[:email] 
        find("input[formcontrolname=emailConfirmation]").set user[:email]
        find("input[formcontrolname=address]").set user[:rua]
        find("input[formcontrolname=number]").set user[:numero]
        find("input[formcontrolname=optionalAddress]").set user[:complemento]
        page.execute_script('window.scrollTo(0,100000)')
    end

    def select_payment(payment)
        payopt = find("mt-radio[formcontrolname=paymentOption]");
        payopt.find('div', text: payment).find("div").click;
    end

    def checkout(payment)
        #self seleciona um metodo interno
        self.select_payment(payment)
        click_button "Finalizar Pedido"
    end

    def sumary
         find(".content")
    end

end