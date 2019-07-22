class BagagemPage
    include Capybara::DSL

    def incluir_bagagem
        
        button = find('button.md-close')
        if button
            button.click
        end

    end
end