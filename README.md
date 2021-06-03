## RealState - API
![MainBanner](https://res.cloudinary.com/dloadb2bx/image/upload/v1622692009/realstate1_uxymg7.png)

Projeto desenvolvido com o objetivo de desenvolver uma API para armazenar dados de imóveis para locação com posterior alimentação do front-end.

Para fins didáticos este projeto foi hospedado no Heroku e pode ser visto [clicando aqui](http://api-realsate.herokuapp.com/).

## Tecnologias utilizadas neste projeto
Este projeto foi criado com:<br>
<img alt="Ruby" src="https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white"/> <img alt="Rails" src="https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white"/> <img alt="Postgres" src ="https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white"/> <img alt="Bootstrap" src="https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white"/> <img alt="HTML5" src="https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white"/> <img alt="SASS" src="https://img.shields.io/badge/SASS-hotpink.svg?style=for-the-badge&logo=SASS&logoColor=white"/>

Gems utilizadas:

 - [Devise](https://github.com/heartcombo/devise)
 - [Pundit](https://github.com/varvet/pundit)
 - [Simple_form](https://github.com/heartcombo/simple_form)

## Modelagem da API
O modelo elaborado para o presente projeto segue devidamente apresentado abaixo:
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1622692008/realstateDb_hqmmu6.png)

A tabela **User** foi implementado mediante a Gem Devise, sendo padrão login por emal e senha, desta forma ocultou-se o campo password por ser inerente ao devise.

![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1622692009/realstateDb1_bcbwus.png)

## API endpoint
A **API** poderá ser acessada a partir do endpoint `localhost:3000/api/v1/rentals` ou a partir do endpoint hospedado no heroku ([clique aqui](http://api-realsate.herokuapp.com/api/v1/rentals)).

![secondImg](https://res.cloudinary.com/dloadb2bx/image/upload/v1622692045/realStateApi_wafftk.png)

Cada imóvel inserido na API poderá também ser acessado pelo endpoint: `api/v1/rentals/:id`, veja [clicando aqui](http://api-realsate.herokuapp.com/api/v1/rentals/3).
## Home page
![Home](https://res.cloudinary.com/dloadb2bx/image/upload/v1622692009/realstate2_cdg0gb.png)

A home page foi estilizada usando CSS-grid usando o seguinte:

    .rental-grid{
      display: grid;
      grid-template-columns: 1fr 1fr 1fr;
      grid-gap: 16px;
      margin: 10px;
    }

    .rental-card{
      margin: 10px 0;
      border: 1px solid #E8E8E8;
      box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2);
    }

Todos os dados apresentados pelo front-end são enviados pela API. Foram limitados 06 resultados na página inicial que são apresentados de forma aleatória ao usuário sempre que ele atualizar a página.

A barra de busca na página principal não foi implementada nesta versão, sendo realizada posteriormente por questão de prazo mediante a gem Pg_search conforme implementado [neste projeto (Imdb_search)](https://github.com/thiagohrcosta/imdb_search), permitindo posterior consulta a partir dos dados enviados pela API.

## Show page
Ao clicar em um determinado imóvel o usuário será automaticamente encaminhado para a rota mediante o id cadastrado pela API, lhe sendo apresentada a seguinte tela:
![Show Page](https://res.cloudinary.com/dloadb2bx/image/upload/v1622692009/realstate4_rjzy20.png)

## Para alugar
Caso o usuário decida clicar na opção **"Para alugar"** ele será encaminhado para uma página onde são listados todos os imóveis apresentados pela API.
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1622692009/realstate3_x0qdxn.png)

Novamente, caso o usuário clique em **"Ver detalhes"** ele será redirecionado para a página do imóvel conforme apresentada no item anterior.

O menu de busca lateral ainda não foi implementado nesta versão atual, sendo apresentado apenas sua versão front-end. Para criar o estilo visualizado foi utilizado **Flex** e **Bootstrap**.

## Painel
Caso o usuário esteja cadastrado no site e tenha poderes (neste momento foi deixado liberado para qualquer usuário para fins de testes) ele poderá acessar o painel administrativo onde poderá cadastrar novos imóveis, editar ou remover. Toda a operação CRUD refletirá na API.
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1622740094/realstateadmin_c44k0g.png)

Cada usuário apenas poderá ver no painel administrativo os imóveis que ele cadastrou.
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1622741858/realstateAdmin3_qiu3vr.png)

## Login
Páginas não sensíveis são acessadas por qualquer usuário, contudo, para cadastrar, editar ou apagar imóveis será necessário se cadastrar previamente.
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1622740650/realstateLogin_kfowfl.png)

Existem dois usuários padrões cadastrados no banco de dados que podem ser utilziados para teste:

**Usuário 1 - admin - 6 imóveis cadastrados**
- email: admin@admin.com
- senha: 123456

**Usuário 2 - thiago - 2 imóveis cadastrados**

- email: thiago@admin.com
- senha: 123456

## Como rodar a aplicação?
Este projeto foi desenvolvido em :

- Ruby (2.6.6);
- Rails (6.1.3.2);

Caso você já tenha instalado o Ruby on Rails nas versões acima apontadas, após efetuar o download do projeto é necessário rodar os seguintes comandos:

- yarn install;

Caso o projeto continue apresentando erros rode os seguintes comandos:

- bundle install;
- rails db:create (caso o banco de dados não esteja criado);
- rails db:migrante (para implementar as migrações no bando de dados);
- rails db:seed (para popular a API);

Caso alguma migração ou seed apresente erro você poderá tentar o comando:

- rails db:reset

