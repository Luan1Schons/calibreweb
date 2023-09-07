# Use a imagem oficial do Certbot como base
FROM certbot/certbot

# Informe seu endereço de e-mail e domínio
ENV CERTBOT_EMAIL=domain@bookbox.me
ENV CERTBOT_DOMAIN=bookbox.me

# Copie o script de entrada personalizado para o contêiner
COPY entrypoint.sh /entrypoint.sh

# Defina permissões de execução para o script
RUN chmod +x /entrypoint.sh

# Execute o script como comando padrão
CMD ["/entrypoint.sh"]
