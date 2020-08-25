describe 'Login com cadastro', :login3 do
    
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/access'
    end

    it 'login com sucesso' do

        # Forma 1
        # login_form = find('#login') # Método de escopo

        # login_form.find('input[name=username]').set 'stark' # Procura filhos com o elemento informado
        # login_form.find('input[name=password]').set 'jarvis!'

        # click_button 'Entrar'
        # expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

        # Forma 2 - método within (pai)
        within('#login') do
            find('input[name=username]').set 'stark' 
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
        end
    end

    it 'cadastro com sucesso' do
        
        within('#signup') do
            find('input[name=username]').set 'fernanda' 
            find('input[name=password]').set '123456'
            click_link 'Criar Conta'
        end
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end