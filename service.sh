
SERVICO=$1
ACAO=$2


start_dns() {
  cd dns > /dev/null 2>&1
  docker build -t bind .  > /dev/null 2>&1
  docker run -d -p 53:53/udp -p 53:53/tcp --name bind9 bind  > /dev/null 2>&1
}


stop_dns() {
  docker stop bind9 > /dev/null 2>&1
  docker rm bind9 > /dev/null 2>&1
}

start_web() {
  cd web > /dev/null 2>&1
  docker build -t web .
  docker run -d -p 80:80/tcp --name web web
}


stop_web() {
  docker stop web  > /dev/null 2>&1
  docker rm web > /dev/null 2>&1
}


case "$SERVICO" in
  dns)
    case "$ACAO" in
      start)
        start_dns
        if [ $? -eq 0 ]; then
          echo "DNS iniciado com sucesso"
        else
          echo "Falha ao iniciar o DNS"
        fi
        ;;
      stop)
        stop_dns
        if [ $? -eq 0 ]; then
          echo "DNS parado com sucesso"
        else
          echo "Falha ao parar o DNS"
        fi
        ;;
      *)
        echo "Ação inválida: $ACAO"
        echo "Use 'start' ou 'stop' para o serviço DNS"
        exit 1
        ;;
    esac
    ;;
  web)
    case "$ACAO" in
      start)
        start_web
        if [ $? -eq 0 ]; then
          echo "Servidor Web iniciado com sucesso"
        else
          echo "Falha ao iniciar o servidor Web"
        fi
        ;;
      stop)
        stop_web
        if [ $? -eq 0 ]; then
          echo "Servidor Web parado com sucesso"
        else
          echo "Falha ao parar o servidor Web"
        fi
        ;;
      *)
        echo "Ação inválida: $ACAO"
        echo "Use 'start' ou 'stop' para o serviço Web"
        exit 1
        ;;
    esac
    ;;
  *)
    echo "Serviço inválido: $SERVICO"
    echo "Use 'dns' ou 'web' como serviço"
    exit 1
    ;;
esac