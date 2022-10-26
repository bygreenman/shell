## crontab /etc/crontab
## 3 0 * * 6,0 mgm_clean_dbeaver_service.sh
#!/usr/bin/bash

##筛选所有进程
## ps -ef | grep dbeaver | grep -v grep | awk '{print $2}'

ps -ef | grep dbeaver | grep -v grep | awk '{print $2}' | xargs kill -9