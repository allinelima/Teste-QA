class TrechoPage
    include Capybara::DSL

    def load
        visit '/'
    end

    def fechar_popup
        find('.btn-close-modal').click
        sleep 3
    end

    def pesquisa_trecho
        find('input[name="inptdestination"]').set('rio')
        find('#ui-id-2701188').click
        find('input[name="departureDate"]').click
        find('.day-182019').click
        find('input[name="arrivalDate"]').click
        find('.day-3082019').click
        find('.btn-submit').click
    end


end