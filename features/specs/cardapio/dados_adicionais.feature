#language: pt

Funcionalidade: Dados adicionais do Restaurante
Como usuário,
Gostaria de acessar os detalhes de um Restaurante
Para pode verificar os dados adicionais desse Restaurante

Contexto: Acesso a lista de restaurantes
    Dado acesso a lista de restaurantes 

@adicionais @cardapio
    Cenario: Detalhes do Restaurantes
        Quando escolho o restaurante "Bread & Bakery"
        Então vejo os dados adicionais do restaurante
      | categoria | Padaria                                                                                       |
      | descricao | A Bread & Brakery tem 40 anos de mercado. Fazemos os melhores doces e pães. Compre e confira. |
      | horario   | Funciona de segunda à sexta, de 8h às 23h                                                     |