Quando("informo os meus dados para compra de reserva") do
    @voo.selecionar_voo
    @compra.inserir_dados
end
  
Quando("finalizo minha compra") do
    @compra.finalizar_compra
end
  
Então("vejo o meu número de reserva") do
    @compra.tem_codigo_reserva
    @compra.fechar_janela
end
  