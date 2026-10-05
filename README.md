# Versões
node -v
v24.14.0
npm -v
11.9.0
Angular
21.2.13.
# Descrição do projeto
Até agora, apenas um portfólio super simples.
* 08/06/2026
Agora é um portfólio bonito, diferente do anterior, com mat-card, no caso, o CSS foi completamente trocado, por
um mais bonito, do ANGULAR, nós adicionamos o "inicio" 
e o "sobre", imagino que nas próximas aulas será 
adicionado "projetos" e contato".
* 13/06/2026
Acabou que eu fiz "projetos" e "contato" como nível A
* 15/06/2026
Fiz o nível C e B, onde fizemos o banco de dados(projetos e tecnologia)
para usar olhar o banco(feito pelo código de php) tem que digitar:

/usr/bin/php -S 0.0.0.0:8000
(ou outra coisa em vez de 8000, tipo 8001, caso 8000 já esteja sendo usado)
pra abrir o projeto é só entrar em portfolio-angular(cd portfolio-angular) e digitar ngserve
sobre o setup.sql, você pode sempre recriar o banco usando 
sudo mariadb < sql/setup.sql

## 🎯 Autoavaliação
17/08/2026
Conceito pretendido: [B]
Justificativa:
- Form reativo + erro por campo: contato.html (mensagens com touched) + contato.ts (Validators)
- POST via service + tratamento: contato.service.ts (http.post) + contato.ts (subscribe next/error)
- Bilhete: 
1 -get só pega os dados e é menos seguro, enquanto post consegue mudar e é seguro
2 - por algum motivo deu erro pela pagina n ser https(era http), depois q eu troquei deu certo
3 - contato.php, post é mais seguro q get

Comandos aula 24/08/2026
1 -
@SpencerCenko ➜ /workspaces/portfolio-angular (main) $ pwd
curl -i -X POST http://localhost:8000/api/projetos.php -H "Content-Type: application/json" -d '{"nome":"Projeto de teste","ano":2026}'
/workspaces/portfolio-angular
HTTP/1.1 201 Created
Host: localhost:8000
Date: Mon, 24 Aug 2026 20:19:01 GMT
Connection: close
X-Powered-By: PHP/8.3.6
Access-Control-Allow-Origin: *
Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS
Access-Control-Allow-Headers: Content-Type
Content-Type: application/json; charset=utf-8

{"id":10}@SpencerCenko ➜ /workspaces/portfolio-angular (main) $
2 - 
@SpencerCenko ➜ /workspaces/portfolio-angular (main) $ curl -i -X POST http://localhost:8000/api/projetos.php -H "Content-Type: application/json" -d '{"ano":2026}'o":2026}'
HTTP/1.1 400 Bad Request
Host: localhost:8000
Date: Mon, 24 Aug 2026 20:20:18 GMT
Connection: close
X-Powered-By: PHP/8.3.6
Access-Control-Allow-Origin: *
Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS
Access-Control-Allow-Headers: Content-Type
Content-Type: application/json; charset=utf-8

{"erro":"Informe pelo menos o nome do projeto"}@SpencerCenko ➜ /workspaces/portfolio-angular (main) $
3 - 
@SpencerCenko ➜ /workspaces/portfolio-angular (main) $ curl -i -X PUT "http://localhost:8000/api/projetos.php?id=10" -H "Content-Type: applicati
on/json" -d '{"nome":"Projeto de teste (editado)","ano":2026}'
HTTP/1.1 200 OK
Host: localhost:8000
Date: Mon, 24 Aug 2026 20:22:10 GMT
Connection: close
X-Powered-By: PHP/8.3.6
Access-Control-Allow-Origin: *
Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS
Access-Control-Allow-Headers: Content-Type
Content-Type: application/json; charset=utf-8

{"mensagem":"Projeto atualizado"}@SpencerCenko ➜ /workspaces/portfolio-angular (main) $
4 - 
@SpencerCenko ➜ /workspaces/port@SpencerCenko ➜ /workspaces/portfolio-angular (main) $ curl -i -X PUT "http://localhost:8000/api/projetos.php?id=10" -H "Content-Type: applicati
on/json" -d '{"nome":"Projeto de teste (editado)","ano":2026}'
HTTP/1.1 200 OK
Host: localhost:8000
Date: Mon, 24 Aug 2026 20:22:10 GMT
Connection: close
X-Powered-By: PHP/8.3.6
Access-Control-Allow-Origin: *
Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS
Access-Control-Allow-Headers: Content-Type
Content-Type: application/json; charset=utf-8

{"mensagem":"Projeto atualizado"}@SpencerCenko ➜ /workspaces/portfolio-angular (main) $ curl -i -X DELETE "http://localhost:800curl -i -X DELETE "http://localhost:8000/api/projetos.php?id=10"
# rode de novo, no MESMO id
curl -i -X DELETE "http://localhost:8000/api/projetos.php?id=10"
HTTP/1.1 200 OK
Host: localhost:8000
Date: Mon, 24 Aug 2026 20:22:51 GMT
Connection: close
X-Powered-By: PHP/8.3.6
Access-Control-Allow-Origin: *
Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS
Access-Control-Allow-Headers: Content-Type
Content-Type: application/json; charset=utf-8

{"mensagem":"Projeto deletado"}HTTP/1.1 404 Not Found
Host: localhost:8000
Date: Mon, 24 Aug 2026 20:22:51 GMT
Connection: close
X-Powered-By: PHP/8.3.6
Access-Control-Allow-Origin: *
Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS
Access-Control-Allow-Headers: Content-Type
Content-Type: application/json; charset=utf-8

{"mensagem":"Projeto deletado"}{"erro":"Projeto nao encontrado"}@SpencerCenko ➜ /workspaces/portfolio-angular (main) $
5 -
@SpencerCenko ➜ /workspaces/portfolio-angular (main) $ sudo mariadb -e "SELECT id, nome, ano, status FROM dwii_db.projetos;"
+----+-------------------------------+------+-----------+
| id | nome                          | ano  | status    |
+----+-------------------------------+------+-----------+
|  1 | Portfolio Pessoal             | 2026 | publicado |
|  2 | Sistema de Biblioteca         | 2025 | publicado |
|  3 | App de Tarefas                | 2025 | publicado |
|  4 | Loja Virtual (prototipo)      | 2024 | publicado |
|  5 | API de Clima                  | 2026 | publicado |
|  6 | Jogo da Velha (em construcao) | 2026 | rascunho  |
+----+-------------------------------+------+-----------+
@SpencerCenko ➜ /workspaces/portfolio-angular (main) $ 
## API em Node (Aula 21)

Uma segunda versao da API, em JavaScript, na pasta `api-node/`.
O contrato de `Get /api/projetos` e o mesmo do `api/projetos.php`.

Como rodar:
    cd api-node
    npm install
    node server.js

A API sobe em http://localhost:3000. Teste com:

    curl -i http://localhost:3000/api/projetos

### Aula 22: a API le do banco

Antes de subir a API, o MariaDB precisa estar de pe:

    sudo service mariadb start
    cd api-node
    node server.js

Rotas que leem do `dwii_db`:
    curl -i https://localhost:3000/api/projetos
    curl -i https://localhost:3000/api/projetos/5
    curl -i https://localhost:3000/api/tecnologias

### Aula 23: a API cria, altera e apaga

A API em umso e a de `api-node/`. Os arquivos `api/*.php` e `conexao.php` ficam no repositorio como historico do 2o trimestre.

    curl -i -X POST https://localhost:3000/api/projetos -H "Content-Type: application/json" -d '{"nome":"Projeto de teste","ano":2026}'

    curl -i -X POST https://localhost:3000/api/projetos -H "Content-Type: application/json" -d '
    {"nome":"Projeto de teste (editado)","ano":2026}'
    curl -i -X DELETE http://localhost:3000/api/projetos/19