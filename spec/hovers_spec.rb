describe 'Mouse Houver', :hovers do
    
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/hovers'
    end

    it 'quando passo o mouse sobre o Blade' do
        find('img[alt=Blade]').hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'quando passo o mouse sobre o Pantera Negra' do
        find('img[alt^=Pantera]').hover # ^= -> começa com / $= -> termina com / *= -> contem

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'quando passo o mouse sobre o Homem Aranha' do
        find('img[alt="Homem Aranha"]').hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

    after(:each) do
        sleep 0.5 # temporário
    end
end