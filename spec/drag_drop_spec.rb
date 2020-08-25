describe 'Drag and Drop', :drop do

    before(:each) do
        visit '/drag_and_drop'
    end
    
    it 'homem aranha pertence ao time do stark' do
        
        # Forma 1
        # stark = find('.team-stark .column')
        # cap = find('.team-cap .column')
        # spiderman = find('img[alt$=Aranha]')
        # spiderman.drag_to stark

        # expect(stark).to have_css 'img[alt$=Aranha]'
        # expect(cap).not_to have_css 'img[alt$=Aranha]'

        # Forma 2
        find('img[alt$=Aranha]').drag_to find('.team-stark .column')
        expect(find('.team-stark .column')).to have_css 'img[alt$=Aranha]' # verifica se a img contem em stark
        expect(find('.team-cap .column')).not_to have_css 'img[alt$=Aranha]' # verifica se a img Não contem em cap

    end
end