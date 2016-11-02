require "spec_helper"
require "team"



describe Team do
    valid_input = "[A-Za-z0-9 ]"


    team =  Team.new


    it "Checar instância" do
        expect(team).to be_an_instance_of(Team)
    end

    it "O nome da equipe é válido?" do
        expect(team.nome).to match(valid_input)
    end

    it "A descrição é valida?" do
        expect(team.descricao).to match(valid_input)
    end

    it "Os nomes dos membros são válidos?" do
        expect(team.membros[0]).to match(valid_input)
    end

end
