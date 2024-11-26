# Check if the script is running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Please use 'sudo' or switch to the root user('su -')." >&2
    exit 1
fi

wget https://raw.githubusercontent.com/slboat/notion-reverse-proxy/main/geocn.conf \
-O /etc/nginx/geocn.conf

wget https://raw.githubusercontent.com/slboat/notion-reverse-proxy/main/nginx.conf \
-O  /etc/nginx/nginx.conf  

nginx -s reload
