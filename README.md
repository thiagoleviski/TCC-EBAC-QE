 ▪ Conforme a sua estratégia, você pode executar os testes no endereço disponibilizado ou utilizando as imagens disponíveis no Docker Hub:
    ◦ Banco de Dados: ernestosbarbosa/lojaebacdb
    ◦ Loja EBAC: ernestosbarbosa/lojaebac


 ▪ Comandos para subir os containers:

docker network create --attachable ebac-network

docker run -d --name wp_db -p 3306:3306 --network ebac-network ernestosbarbosa/lojaebacdb:latest

docker run -d --name wp -p 80:80 --network ebac-network ernestosbarbosa/lojaebac:latest


 ▪ Após subir os containers a loja estará em http://localhost:80
