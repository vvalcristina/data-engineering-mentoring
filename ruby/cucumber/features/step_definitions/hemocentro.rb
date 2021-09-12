When(/^accessing url$/) do
    visit('https://www.hemocentro.unicamp.br/')
end

Then(/^verify page correct$/) do
    expect(page).to have_current_path('https://www.hemocentro.unicamp.br/',url:true)
end

When(/^I am looking for blood supply information and save the information in a \.csv$/) do
    hemocentro = []
    ultimaAtualizacao = find(:xpath,"//p[@class='ultima-atualizao']").text
    sangueOpositivo=find(:xpath,"//div[@class='bolsa' and contains(.,'O+')]/..").text
    sangueApositivo=find(:xpath,"//div[@class='bolsa' and contains(.,'A+')]/..").text
    sangueABpositivo=find(:xpath,"//div[@class='bolsa' and contains(.,'AB+')]/..").text
    sangueOnegativo=find(:xpath,"//div[@class='bolsa' and contains(.,'O-')]/..").text
    sangueAnegativo=find(:xpath,"//div[@class='bolsa' and contains(.,'A-')]/..").text
    sangueABnegativo=find(:xpath,"//div[@class='bolsa' and contains(.,'AB-')]/..").text
    hemocentro << [ultimaAtualizacao, sangueOpositivo, sangueApositivo, sangueABpositivo, sangueOnegativo,sangueAnegativo,sangueABnegativo ]
    puts hemocentro
    path = '/opt/src/cucumber/hemocentro.csv'
    File.write(path, hemocentro)    
end
  
Then(/^verify file$/) do
    expect(page).to have_xpath("//*[contains(@class,'linha-estoque-de-sangue')]")
end
