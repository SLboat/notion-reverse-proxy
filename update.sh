# Check if the script is running as root
if [ "$(id -u)" -ne 0 ]; then
    echo -e "\033[31m\n========================================\nThis script must be run as root.\nPlease use 'sudo' or switch to the root user('su -').\n========================================\033[0m" >&2
    exit 1
fi

wget https://raw.githubusercontent.com/slboat/notion-reverse-proxy/main/geocn.conf \
-O /etc/nginx/geocn.conf

wget https://raw.githubusercontent.com/slboat/notion-reverse-proxy/main/nginx.conf \
-O  /etc/nginx/nginx.conf  

nginx -s reload
