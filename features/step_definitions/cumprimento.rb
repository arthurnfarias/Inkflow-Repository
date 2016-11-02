When (/^Eu for na página inicial$/) do
	visit root_path
end

Then (/^Eu devo ver uma mensagem de cumprimento$/) do
	has_content?("Welcome to Inkflow!")
end
