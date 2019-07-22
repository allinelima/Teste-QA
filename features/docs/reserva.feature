#language: pt

Funcionalidade: Reserva
Para que eu possa realizar uma viagem
Sendo um usuário sem cadastro
Posso acessar a viajanet para realizar compras de reservas

    @comprar @pesquisa
    Cenário: Comprar reserva
    Quando informo os meus dados para compra de reserva
    E finalizo minha compra
    Então vejo o meu número de reserva 
