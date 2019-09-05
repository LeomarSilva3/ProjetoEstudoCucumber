Before do
    page.current_window.resize_to(1990, 1200)
    #@cart_page fica disponivel em todo o cenario
    @cart_page = CartPage.new
    @restaurante_page = RestautantesPage.new
    @cardapio_page = CardapioPage.new
    @close_carrinho = OrderPage.new
      

end

Before('@bread_bakery') do 
    visit '/restaurants/bread-bakery/menu'
    
end

Before('@green_food') do 
    visit '/restaurants/green-food/menu'
end