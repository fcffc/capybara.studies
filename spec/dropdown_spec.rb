describe 'Caixa de opções' do
    
    it 'item especifico simples', :dropdown do # , :dropdown indica uma tag
        visit '/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3 # temporario
    end

    it 'item especifico com o find', :dropdown do
        visit '/dropdown'
        drop = find('.avenger-list') # quando não tem id
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3 # temporario
    end

    it 'qualquer item', :sample do
        visit '/dropdown'
        drop = find('.avenger-list') # quando não tem id
        drop.all('option').sample.select_option # retorna um Array de option e seleciona um de forma randomica
    end
end