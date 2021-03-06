describe 'Caixas de seleção', :checkbox do

    before(:each) do
        visit '/checkboxes'
    end
    
    it 'marcando uma opçõa' do
        check('thor')
    end

    it 'desmarcar uma opção' do
        uncheck('antman')
    end

    it 'marcando com find set true' do
        find('input[value=cap]').set(true)
    end

    it 'desmarcando com find set false' do
        find('input[value=guardians]').set(false)
    end

    after(:each) do
        sleep 3
    end
end

# rspec --tag @checkbox -fd -> para rodar tag