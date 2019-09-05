#language:pt

Funcionalidade: Fechar carrinho

@total @green_food
Cenario: Valor total e frete
    
    Dado que adicionei os seguintes items do carrinho:
      | quantidade | name                | descricao                               | subtotal |
      | 1          | Suco Detox          | Suco de Couve, cenoura, salsinha e maçã | R$ 14,90 |
      | 2          | Hamburger de Quinoa | Cheio de fibras e muito saboroso        | R$ 21,90 |
    Quando eu fecho o meu carrinho
    Então o valor total de items deve ser igual a "R$ 35,90"
    E o valor do frete deve ser igual a "R$ 8,00"
    E o valor total do carrinjho deve ser igual a "R$ 43,90"