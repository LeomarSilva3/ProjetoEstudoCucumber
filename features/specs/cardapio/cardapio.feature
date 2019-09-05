#language: pt

Funcionalidade: Cardapio
Como usuario do restaurante
Gostaria acessar o cardapio desse restaurante
Para poder escolher os produtos desse restaurante

Contexto: Acesso a lista de restaurantes
    Dado acesso a lista de restaurantes 

      @cardapio
        Cenario: Cardápio de um produto
            Quando escolho o restaurante "Bread & Bakery"
            Então vejo so seguintes items disponiveis no cardapio
              | produto                | descricao                           | valor    |
              | CUP CAKE               | Cup Cake recheado de Doce de Leite  | R$ 8,70  |
              | DONUT                  | Coberto com chantilly               | R$ 2,50  |
              | PÃO ARTESANAL ITALIANO | Pão artesanal com queijos italianos | R$ 15,90 |

        Cenario: Carrinho vazio
            Quando escolho o restaurante "Bread & Bakery"
            Então devo visualizar a seguinte mensagem "Seu carrinho está vazio!"     