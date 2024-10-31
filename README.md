# learning-asa

#

copiar um arquivo da sua máquina local para o container
#docker cp /caminho/local/arquivo.txt <container_id>:/caminho/no/container/

copiar um arquivo do container para o seu host
#docker cp <container_id>:/caminho/no/container/arquivo.txt /caminho/local/




principais comandos de operacao git

git status
git add .
git commit -m "mensagem"
git push 


docker build -t "NAME" "LOCAL"
docker run -d --name "nome" "imagem"
docker run -d -p "porta:porta/udp(ou tcp)" --name "nome" "imagem"

usei:
#docker build -t bind .
#docker run -d --name bind9 bind
#docker run -d -p 63:63/udp -p 63:63/tcp --name bind9 bind 


copiar  named.conf,local para /etc/bind  --minha maquina pra conteinemr

copia /etc/bind/db.local .  ---meu container pra maquina



arq db.local --> renomear "db.asa.br "

add linha 14 --> www IN A (de um ipconfig e ponha seu ip)
add linha 15 --> portal IN CNMAE www

final:
nslookup www.asa.br 127.0.0.1
nslookup portal.asa.asa.br 127.0.0.1

git add. 
git commit -m "add bind config files"
git push 