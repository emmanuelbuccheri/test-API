*Settings*
Documentation   Suite de Teste de exclusão de personagens na API da Marvel

Resource        ${EXECDIR}/resources/Base.robot

#Chama a library que programada em Python
# Library         ${EXECDIR}/resources/factories/Thanos.py
# Library         ${EXECDIR}/resources/factories/Deadpool.py
Library         ${EXECDIR}/resources/factories/X-men.py

Suite Setup     Super Setup     emma1909@hotmail.com

*Test Cases*
Deve buscar um personagem pelo ID

    ${personagem}       Factory Ciclope
    ${ciclope}          POST New Character          ${personagem}
    ${ciclope_id}       Set Variable                ${ciclope.json()}[_id]
    
    ${response}         DELETE Character By ID      ${ciclope_id}

    Status Should Be    204                         ${response}

    ${response2}        GET Character By ID         ${ciclope_id}

    Status Should Be    404                         ${response2}   

Nao deve encontrar o personagem pelo ID inexistente
    #Gera um ID valido nao cadastrado
    ${personagem_id}    Get Unique ID
    
    ${response}         DELETE Character By ID      ${personagem_id}

    Status Should Be    404                         ${response}