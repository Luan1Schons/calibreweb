#!/bin/sh

# Use o Certbot para obter o certificado SSL
certbot certonly --webroot --webroot-path /proxy --agree-tos --email $CERTBOT_EMAIL -d $CERTBOT_DOMAIN

# Após a obtenção do certificado, você pode adicionar comandos adicionais, como a configuração de serviços ou a renovação periódica do certificado
# Exemplo: reiniciar o serviço Nginx após obter o certificado
# service nginx restart

# Mantenha o contêiner em execução para que o cronjob do Certbot possa renovar o certificado conforme necessário
tail -f /dev/null
