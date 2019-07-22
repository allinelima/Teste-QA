class VooPage
    include Capybara::DSL

    def selecionar_voo
        find('.results_group:first-of-type .btn-checkin').click
    end

    def selecionar_bagagem
        find('.btn-x').click
    end

end