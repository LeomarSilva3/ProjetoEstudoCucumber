#language:pt
@bread_bakery @remover
Funcionalidade: Remover item do carrinho
Como cliente,
gostaria de visualizar produtos no carrinho,
Para que eu possa remover os produtos do carrinho


      Contexto: Adicionando items no carrinho
       Dado que tenho os seguintes items no carrinho
                | name                   | preco    | quantidade |
                | Cup Cake               | R$ 8,70  | 1          |
                | Donut                  | R$ 2,50  | 1          |
                | Pão Artesanal Italiano | R$ 15,90 | 1          |


       
        Esquema do Cenario: Remover 1 produto do carrinho
            Quando removo somente o <item>
            Então o valor total de produtos do carrinho deve ser <total>
                Exemplos:
                    | item  | total      |
                    | 0     | "R$ 18,40" |
                    | 1     | "R$ 24,60" |
                    | 2     | "R$ 11,20" |

        
        Cenario: Remover todos os produtos do carrinho
            Quando removo todos os items do carrinho
            Então devo visualizar a seguinte mensagem "Seu carrinho está vazio!"

        
        Cenario: Limpar carinho
            Quando eu limpo o carrinho    
            Então devo visualizar a seguinte mensagem "Seu carrinho está vazio!"