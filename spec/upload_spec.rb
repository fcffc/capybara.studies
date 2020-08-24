describe 'Upload', :upload do
    
    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/imagem.png'
    end

    it 'upload com arquivo texto' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'
        expect(find('#uploaded-file').text).to eql 'arquivo.txt'
    end

    it 'upload com imagem' do
        attach_file('file-upload', @imagem)
        click_button 'Upload'
        sleep 4
        expect(find('#new-image')[:src]).to include 'uploads/imagem.png'
    end

    after(:each) do
        sleep 3
    end
end