wget https://raw.githubusercontent.com/slboat/notion-reverse-proxy/main/geocn.conf \
-O /etc/nginx/geocn.conf

wget https://raw.githubusercontent.com/slboat/notion-reverse-proxy/main/nginx.conf \
-O  /etc/nginx/nginx.conf  

nginx -s reload
