module PessoasHelper
    
SEXO = [
    ["Masculino", "1"],
    ["Feminino", "2"],
    ["Não declarar", "0"]
] 

COR = [
    ["Pele clara", "1"],
    ["Pele escura", "1"],
    ["Não declarar", "0"]
] 
    
ESCOLARIDADE = [
    ["Analfabeto", "1"],
    ["Ensino fundamental incompleto", "2"],
    ["Ensino fundamental completo", "3"],
    ["Ensino médio incompleto", "4"],
    ["Ensino médio completo", "5"],
    ["Superior completo", "6"],
    ["Pós-Graduação", "7"],
    ["Mestrado", "8"],
    ["Doutorado", "9"],
    ["Pòs-Doutorado", "10"],
    ["Não declarar", "0"]
] 
    
    
    def options_for_sexo(selected)
        options_for_select(SEXO, selected)
    end
    
    def options_for_cor(selected)
        options_for_select(COR, selected)
    end
    
    def options_for_escolaridade(selected)
        options_for_select(ESCOLARIDADE, selected)
    end
    
    def show_escolaridade(selected)
        options_for_select(ESCOLARIDADE, selected)
    end
    
end
