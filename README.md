
Este repositório contém scripts e arquivos necessários para configurar um servidor de DNS e um servidor Web, interligados para fornecer serviços de resolução de nomes e hospedagem de conteúdo. A estrutura dos serviços é organizada em containers Docker, com um script de automação para facilitar o gerenciamento e execução.

dns/: Contém os arquivos necessários para configurar o servidor DNS.
  Dockerfile: Arquivo que define a imagem Docker para o servidor DNS.
  db.asa.br: Arquivo de banco de dados DNS com registros.
  named.conf.local: Arquivo de configuração do BIND para o servidor DNS.
  
web/: Contém os arquivos necessários para configurar o servidor Web.
  Dockerfile: Arquivo que define a imagem Docker para o servidor Web utilizando o ngnix.
  index.html: Página de exemplo do servidor Web Personalizada.
  service.sh: Script Bash para automatizar o início e parada dos serviços.
  

->Para iniciar o servidor DNS:
cd /CaminhoDiretorio/atividade-asa-01/dns
./service.sh dns start

->Para iniciar o servidor Web:
cd  /CaminhoDiretorio/atividade-asa-01/web
./service.sh web start


->Para parar o servidor DNS:
./service.sh dns stop


->Para parar o servidor Web:
./service.sh web stop


Edite o arquivo de configuração do DNS (db.asa.br).
Substitua a linha 16 na quarta coluna com o endereço IPv4 da sua máquina local e o domínio desejado.


