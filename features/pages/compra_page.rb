class CompraPage
    include Capybara::DSL

    def modal
        modal = find('#modal-exit-checkout')
    end

    def inserir_dados
        @teclas = %i[tab]
        @nova_janela = window_opened_by {find('.md-close').click}

        within_window @nova_janela do 
            find('#my-account_email').set('marcosnathanjesus@uolbol.com') #EMAIL
            find('#nome_0').set('Maria')
            find('#lastName_0').set('Aline')
            find('#birth_0').set('13111992')
            combo_genero = find('select[name="gender_0"]')
            combo_genero.find('option', text: 'Feminino').select_option
            combo_cartao = find('select[name="flag_card"]')
            combo_cartao.find('option', text: 'Visa').select_option
            find('#number_card-0').set('4916365861344341')
            combo_mes = find('select[name="month-0"]')
            combo_mes.find('option', text: '09').select_option
            combo_ano = find('select[name="year-0"]')
            combo_ano.find('option', text: '2020').select_option
            find('#codesecure_card-0').set('635')
            find('#name_card-0').set('Maria Aline')
            cpf = find('#cpf_card-0').set('01935370014') #CPF

            @teclas.each do |t|
                find('#zipcode-0').set('03043020')
                find('#zipcode-0').send_keys t
                sleep 1
            end
            
            find('#number_address-0').set('30')
            find('#contact_email').set('marcosnathanjesus@uolbol.com') #EMAIL
            find('#contact_email_confirm').set('marcosnathanjesus@uolbol.com') #EMAIL
            find('#contact_phonenumber_0').set('11982602880')
        end
    end

    def finalizar_compra
        within_window @nova_janela do
            find(:css, '#accept-checkout').set(true)
            find('button[type="submit"]').click
        end
    end

    def tem_codigo_reserva
        within_window @nova_janela do
            #title = find('.reserve-number-text')
            #exec(page).to have_css(title, text: 'NÚMERO DA RESERVA')
            page.has_selector?('.reserve-number-text + .ng-bindingd')
        end
    end

    def fechar_janela
        within_window @nova_janela do
            @nova_janela.close
        end
    end
    
end