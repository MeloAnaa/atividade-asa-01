FROM nginx:latest

# Copiar o arquivo index.html para o diretório correto no container
COPY ./index.html /usr/share/nginx/html/

# Se você tiver um arquivo nginx.conf personalizado, copie também
# COPY ./nginx.conf /etc/nginx/nginx.conf  # Se você estiver usando um nginx.conf personalizado

# Expor a porta 8080
EXPOSE 80

# Iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
