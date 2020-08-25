describe 'Alertas de JS', :alerts, :smoke do
    
    before(:each) do
        visit '/javascript_alerts'
    end

    it 'alerta' do
        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        page.driver.browser.switch_to.alert.accept # Corrige falha de screenshots do alert
    end

    it 'sim confirma' do
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
        page.driver.browser.switch_to.alert.accept # Corrige falha de screenshots do alert
    end

    it 'não confirma' do
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
        page.driver.browser.switch_to.alert.dismiss # Corrige falha de screenshots do alert
    end

    it 'prompt', :accept_prompt do

        accept_prompt(with: 'Fernanda') do
            click_button 'Prompt'
        end
        expect(page).to have_content 'Olá, Fernanda'
    end

    # desafio: não aceitar e receber a msg Olá, null
    it 'dismiss prompt', :dismiss_prompt do
        
        dismiss_prompt() do
            click_button 'Prompt'
        end
        expect(page).to have_content 'Olá, null'
    end
end