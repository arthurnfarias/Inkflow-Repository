Given (/^Estar na página OKRS$/) do
    visit "/okrs"
end
When (/^Eu clicar no botão New OKR$/) do
    click_on("New OKR")
end
Then (/^Eu devo ser direcionado para a página de criação de OKR$/) do
    visit "/okrs/new"
end
