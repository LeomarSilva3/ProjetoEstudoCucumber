#language: pt
@rest
Funcionalidade: Restaurantes    
    Para que eu possa saber quais os restaurantes disponíveis com o tempo de entrega e nota de avaliação
    Sendo um usuário que deseja pedir comida
    Posso acessar a lista de restaurante


#in line
#!!!!!!!!!!cucumber valida todas as regras ao mesmo tempo !!!!!!!!!!!!!!!
@restaurants
    Cenario: Restaurantes Disponiveis
        Dado acesso a lista de restaurantes 
        E que temos os seguintes restaurantes
        | nome           | categoria    | entrega      | avaliacao |
        | Bread & Bakery |  Padaria     |  25 minutos  |  4.9      |
        | Burger House   |  Hamburgers  |  30 minutos  |  3.5      |
        | Coffee Corner  |  Cafeteria   |  20 minutos  |  4.8      |
        Então devo ver todos os restaurantes dessa lista
