#language:pt
@bread_bakery   
Funcionalidade: Adicionar produto ao carrinho
Como um usuário,
gostaria de visualizar os detalhes do restaurante
para poder visualizar os produtos do cardapio deste restaurante,
e adicionar os produtos do cardapio no carrinho,
Afim de finalizar a compra
        
       
        Cenario: Adicionar 1 unidade no carrinho
            Dado que o produto desejado e "Cup Cake"
            E o valor do produto e "R$ 8,70"
            Quando eu adiciono 1 unidade(s) ao carrinho
            Então deve ser adiconado 1 unidade(s) deste item
            E o valor total de produtos do carrinho deve ser "R$ 8,70"

     
        Cenario: Adicionar 2 unidades no carrinho
            Dado que o produto desejado e "Donut"
            E o valor do produto e "R$ 2,50"
            Quando eu adiciono 2 unidade(s) ao carrinho
            Então deve ser adiconado 2 unidade(s) deste item
            E o valor total de produtos do carrinho deve ser "R$ 5,00" 
        
       
        Cenario: Adicionar varios produtos no carrinho
            Dado que os produtos desejados são
            | name                   | preco    | quantidade |
            | Cup Cake               | R$ 8,70  | 1          |
            | Donut                  | R$ 2,50  | 2          |
            | Pão Artesanal Italiano | R$ 15,90 | 1          |
            Quando eu adiciono todos os items ao carrinho
            Então vejo todos os items no carrinho
            E o valor total de produtos do carrinho deve ser "R$ 29,60"    