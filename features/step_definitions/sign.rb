Given (/^Eu estou na Home Page$/) do
	visit "/"
end
When (/^Eu clicar no botão Sign In$/) do
	click_on("Sign In")
end
Then (/^Eu devo entrar na página de cadastro$/) do
	visit "/users/sign_in"
end
