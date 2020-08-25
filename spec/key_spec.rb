describe 'Teclado', :key do
    
    before(:each) do
        visit '/key_presses'
    end

    it 'enviando teclas' do
        # Forma 1
        # find('#campo-id').send_keys :tab
        # expect(page).to have_content 'You entered: TAB'

        # Forma 2
        teclas = %i[tab escape space enter shift control alt] # %i para criar array de simbolos
        teclas.each do |t|
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
        end
    end

    it 'enviando letras' do
        letras = %w[a s d f g h j k l]  # %w para criar array de strings
        letras.each do |l|
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
            sleep 1
        end
    end
end