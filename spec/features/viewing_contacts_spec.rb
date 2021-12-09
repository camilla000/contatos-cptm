feature 'Viewing contacts' do
  feature 'viewing all contacts' do
    scenario ' the page title is visible' do
      visit('/')
      expect(page).to have_content('Bem vindo ao diretório de contatos da CPTM') 
    end
  end
end