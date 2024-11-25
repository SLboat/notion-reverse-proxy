# 项目介绍

公益非盈利项目, 无任何保证. 

用CN2线路的服务器对Notion进行反向代理, 以加速Notion在中国大陆的访问速度.

阅读更多: <https://notionfaster.org>

# 如何部署服务端

纯净 ubuntu 20.04, debian 10. 以 root 权限运行 (ubuntu需要开启ssh密码)

```shell
apt install curl
bash <(curl -Lso- https://raw.githubusercontent.com/slboat/notion-reverse-proxy/main/install.sh)
```

更新配置
```shell
bash <(curl -Lso- https://raw.githubusercontent.com/slboat/notion-reverse-proxy/main/update.sh)
```

## 测试是否反代成功

使用 curl, curl 的 --resolve 参数可以强指 IP

```bash
curl https://www.notion.so --resolve www.notion.so:443:119.28.13.121
```

# 捐赠

如果你觉得此项目有帮助, 请捐赠, 收入仅仅用于维持服务器成本, 维护人员不会受到任何收入.

<https://afdian.net/@notion-proxy-cn>


