*Settings*
Documentation   Suite de Teste de busca de personagens na API da Marvel

Resource        ${EXECDIR}/resources/Base.robot

#Chama a library que programada em Python
# Library         ${EXECDIR}/resources/factories/Thanos.py
# Library         ${EXECDIR}/resources/factories/Deadpool.py
Library         ${EXECDIR}/resources/factories/X-men.py

Suite Setup     Super Setup     emma1909@yahoo.com

*Test Cases*
Deve buscar um personagem pelo ID

    ${personagem}       Factory Logan
    ${logan}            POST New Character          ${personagem}
    ${logan_id}         Set Variable                ${logan.json()}[_id]
    
    ${response}         GET Character By ID         ${logan_id}

    Status Should Be    200                         ${response}

    Should Be Equal     ${logan.json()}[name]       ${personagem}[name]
    Should Be Equal     ${logan.json()}[aliases]    ${personagem}[aliases]
    Should Be Equal     ${logan.json()}[age]        ${personagem}[age]
    Should Be Equal     ${logan.json()}[team]       ${personagem}[team]
    Should Be Equal     ${logan.json()}[active]     ${personagem}[active]

Nao deve retornar o personagem pelo ID
    #Gera um ID valido nao cadastrado
    ${personagem_id}    Get Unique ID
    
    ${response}         GET Character By ID         ${personagem_id}

    Status Should Be    404                         ${response}