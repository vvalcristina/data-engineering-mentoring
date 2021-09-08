When(/^accessing url$/) do
    visit('https://www.hemocentro.unicamp.br/')
end

Then(/^verify page correct$/) do
    expect(page).to have_current_path('https://www.hemocentro.unicamp.br/',url:true)
end

When(/^I am looking for blood supply information$/) do
    hemocentro = []
    tipoSanguineo=find(:xpath,'//*[@id="linha-estoque"]/div/div[2]/div/div/div[2]').text
    hemocentro << [tipoSanguineo]
    puts hemocentro
end

Then(/^I save the information in a \.csv$/) do
end
