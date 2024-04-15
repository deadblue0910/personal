#!/bin/bash

read -p "请输入 Emby 容器名称:" name

#破解premiere
wget --no-check-certificate https://service.hexsen.com/emby/crack49/Emby.Notifications.dll
docker cp ./Emby.Notifications.dll $name:/system/
wget --no-check-certificate https://service.hexsen.com/emby/crack49/Emby.Web.dll
docker cp ./Emby.Web.dll $name:/system/
wget --no-check-certificate https://service.hexsen.com/emby/crack49/MediaBrowser.Model.dll
docker cp ./MediaBrowser.Model.dll $name:/system/
echo "核心开心完成..."lient/
wget --no-check-certificate https://service.hexsen.com/emby/crack49/dashboard-ui/embypremiere/embypremiere.js
docker cp ./embypremiere.js $name:/system/dashboard-ui/embypremiere/
docker exec -it $name chmod 644 /system/dashboard-ui/embypremiere/embypremiere.js
echo "web 开心完成..."
wget --no-check-certificate https://service.hexsen.com/emby/crack49/
docker cp ./Emby.Server.Implementations.dll $name:/system/
echo "Implementations 替换认证..."
docker exec -it $name chmod 644 Emby.Web.dll Emby.Server.Implementations.dll MediaBrowser.Model.dll Emby.Notifications.dll
rm -f Emby.Notifications.dll
rm -f Emby.Web.dll
rm -f MediaBrowser.Model.dll
rm -f embypremiere.js
rm -f Emby.Server.Implementations.dll

