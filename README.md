# Automação de Teste API

### API URL: http://marvel.qaninja.academy
### Ferramenta de Automação: Robot Framework

### Testes:
    - Create
    - Remove
    - Search

### Suítes de teste contidas no directorio:
    /tests
No diretório tem tres arquivos 'CreateCharacters.robot', 'RemoveCharacters.robot' e 'SearchCharacters'.
O arquivo 'CreateCharacters.robot' contem a suíte de testes de cadastro de personagens na API da Marvel.
O arquivo 'RemoveCharacters.robot' contem a suíte de testes de exclusão de personagens na API da Marvel.
O arquivo 'SearchCharacters' contem a suíte de testes de busca de personagens na API da Marvel.

### Resources feitos para executar as suítes
    /resources
Contem o arquivo base do projeto (*Base.robot*) que faz as chamadas ás librerias comuns e tem as funções básicas para iniciar todas as suites de testes.
Também contém librerias programadas em Python para a criação de alguns personagens nas suites de testes (*resources/factories/*).

### Logs e Reports contidas no directorio:
    /logs
Encontrará toda a documentação detalhada dos testes nos arquivos *'log.html'* e *'report.html'*.


*Testes feitos por mim para um mini curso de "Robot Framework Week" da QA Ninja.*

##### Emmanuel Buccheri
    - GitHub: https://github.com/emmanuelbuccheri/
    - LinkedIn: https://www.linkedin.com/in/emmanuelbuccheri/