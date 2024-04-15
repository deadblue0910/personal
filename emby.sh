#!/bin/bash

#破解premiere
rm -f Emby.Notifications.dll
wget --no-check-certificate https://service.hexsen.com/emby/crack49/Emby.Notifications.dll
rm -f Emby.Web.dll
wget --no-check-certificate https://service.hexsen.com/emby/crack49/Emby.Web.dll
rm -f MediaBrowser.Model.dll
wget --no-check-certificate https://service.hexsen.com/emby/crack49/MediaBrowser.Model.dll
echo "核心开心完成..."lient/
cd dashboard-ui/embypremiere/
rm -f embypremiere.js
wget --no-check-certificate https://service.hexsen.com/emby/crack49/dashboard-ui/embypremiere/embypremiere.js
chmod 644 embypremiere.js
echo "web 开心完成..."
cd ../../
rm -f Emby.Server.Implementations.dll
wget --no-check-certificate https://service.hexsen.com/emby/crack49/Emby.Server.Implementations.dll
echo "Implementations 替换认证..."
chmod 644 Emby.Web.dll Emby.Server.Implementations.dll MediaBrowser.Model.dll Emby.Notifications.dll

