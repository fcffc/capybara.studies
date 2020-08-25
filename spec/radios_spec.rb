describe 'Botões de radio', :radio do
    
    before(:each) do
        visit '/radios'
    end

    it 'seleçõa por id' do
        choose('cap') # quando possui id use choose
    end

    it 'seleçõa por find e css selector' do
        find('input[value=guardians]').click
    end

    after(:each) do
        sleep 3
    end
end