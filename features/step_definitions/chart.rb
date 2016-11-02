Given (/^Eu estou na página Home$/) do
	visit "/"
end
When (/^Eu clicar no botão Chart$/) do
	click_on("Chart")
end
Then (/^Eu devo entrar na página Chart$/) do
	visit "/presentation/tree"
end