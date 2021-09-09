When(/^accessing url$/) do
    visit('https://www.hemocentro.unicamp.br/')
end

Then(/^verify page correct$/) do
    expect(page).to have_current_path('https://www.hemocentro.unicamp.br/',url:true)
end

When(/^I am looking for blood supply information and save the information in a \.csv$/) do
    hemocentro = []
    estoque = find(:xpath,"//*[contains(@class,'linha-estoque-de-sangue')]").text
    hemocentro << [estoque]
    puts hemocentro
    path = '/opt/src/cucumber/hemocentro.csv'
    File.write(path, hemocentro)    
end
  
Then(/^verify file$/) do
    expect(page).to have_xpath("//*[contains(@class,'linha-estoque-de-sangue')]")
end
  