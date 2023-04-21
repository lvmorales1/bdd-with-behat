#language: pt
Funcionalidade: Cadastro de formações
    Eu, como instrutor
    Quero cadastrar uma nova formação
    Para organizar meus cursos

    Regras:
        - Formação precisa ter descrição
        - Descrição precisa ter pelo menos 2 palavras

    Cenário: Cadastro de formação com 1 palavra
        Quando eu tentar criar uma formação com a descrição "PHP"
        Então eu ou ver a seguinte mensagem de erro "Descrição precisa ter pelo menos 2 palavras"
    
    Cenário: Cadastro de formação válida deve salvar no banco
        Dado que estou conectado ao banco de dados
        Quando tento criar uma nova formação com a descrição "PHP na Web"
        Então se eu buscar no banco, devo encontrar essa formação