describe 'Forms' do
    
    it 'login com sucesso' do
        visit 'http://training-wheels-protocol.herokuapp.com/login'

        # fill_in 'username', with: 'stark' p/ name
        fill_in 'userId', with: 'stark' # p/ id 
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true

        # expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end
end