#language:pt

@green_food
Funcionalidade: Finalizar pedido
    Como usuario,
    Gostaria de realizar um pedido
    Para que eu possa receber o pedido no meu endereço
    E finalizar a compra do meu pedido
  @temp
    Cenario: Finalizar pedido com Cartão Refeição
        Dado que eu fechei o pediso com os items:
            | quantidade | name                | descricao                               | subtotal |
            | 1          | Suco Detox          | Suco de Couve, cenoura, salsinha e maçã | R$ 14,90 |
            | 2          | Hamburger de Quinoa | Cheio de fibras e muito saboroso        | R$ 21,90 |
        E informei os meus dados de entrega:
            | nome       | Leomar            |
            | email      | leomar@gmail.com  |
            | rua        | CAtanduva         |
            | numero     | 567               |
            | complemento | conjunto aJuri   |
        Quando eu finalizo o pedido com "Cartão Refeição"
        Então devo ver a segunte mensagem
        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """