*Settings*
Documentation   Suite de Teste do cadastro de personagens na API da Marvel

Resource        ${EXECDIR}/resources/Base.robot

#Chama a library que programada em Python
# Library         ${EXECDIR}/resources/factories/Thanos.py
# Library         ${EXECDIR}/resources/factories/Deadpool.py
Library         ${EXECDIR}/resources/factories/Guardians.py


#Vai rodar uma unica vez dentro da suite... vai ficar para todos os casos
#ainda executando eles sozinhos
Suite Setup     Super Setup     emma1909@gmail.com

*Test Cases*
Deve cadastrar um personagem

    &{personagem}           Factory Star Lord
    ${response}             POST New Character          ${personagem}

    Status Should Be        200     ${response}

Nao deve cadastrar com o mes nome
    #posso executar so os cenarios que tem uma tag
    #dup = duplicado
    [Tags]                  dup

    ${personagem}           Factory Groot
    POST New Character      ${personagem}

    ${response}             POST New Character          ${personagem}

    Status Should Be        409      ${response}
    Should Be Equal         ${response.json()}[error]    Character already exists :(
