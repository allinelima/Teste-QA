Before do
    @trecho = TrechoPage.new
    @voo = VooPage.new
    @bagagem = BagagemPage.new
    @compra = CompraPage.new
end

Before ('@pesquisa') do
    @trecho.load
    @trecho.fechar_popup
    @trecho.pesquisa_trecho
end

Before ('@voo') do
    @voo.selecionar_voo
    #@bagagem.incluir_bagagem
end

After do |scenario|
    nome = scenario.name.gsub(/[^A-Za-z0-9 ]/, '').downcase!
    nome = nome.tr(' ', '_')
    screenshot = "log/screenshots/#{nome}.png"
    page.save_screenshot(screenshot) # => Capybara tira o Screenshot
    embed(screenshot, 'image/png', 'Evidência :)') #=> Cucumber anexa o screenshot no relatório
end