describe 'IDs dinâmicos', :ids_dinamicos do
    
    before(:each) do
        visit '/access'
    end

    it 'cadastro' do
        find('input[id$=UsernameInput]').set 'fernanda'
        find('input[id^=PasswordInput]').set 'fernanda'
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3
    end
end