Given (/^Eu estou na página de cadastro$/) do
	visit "/users/sign_in"
end
When (/^Eu clicar no botão Home$/) do
	click_on("Home")
end
Then (/^Eu devo entrar na página inicial$/) do
	visit "/"
end
