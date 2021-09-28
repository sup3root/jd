#!/bin/bash
## update crontab_list.sh

## 路径与清单
WorkDir=$(cd $(dirname $0); pwd)
JsList=$(cd $WorkDir; ls *.js | grep -E "(ling_|star_|zero_|)?j[drx]_" | perl -ne "{print unless /\.bak/}")
FileCronlist=$WorkDir/docker/crontab_list.test

## crontab_list 头部内容

echo 'SHELL=/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
# 收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1
# 配置更新
17 3 * * * sh /scripts/docker/default_task.sh >> /scripts/logs/default_task.log 2>&1' >$FileCronlist
echo -e "############################################\n" >>$FileCronlist

## 执行写入

cd $WorkDir
for file in $JsList
do
    TaskName=$(grep "new Env" $file | awk -F "'|\"" '{print $2}' | head -1)
    if [[ -n $TaskName ]]; then
        echo -e "# $TaskName" >> $FileCronlist
        cronexp=$(grep -E "tag.+enabled" $file |cut -d' ' -f1-5)
        if [[ ! -z $cronexp ]]; then
            echo "$cronexp node /scripts/$file >> /scripts/logs/${file%%.*}.log 2>&1" >> $FileCronlist
        else
            echo "0 9 * * * node /scripts/$file >> /scripts/logs/${file%%.*}.log 2>&1" >> $FileCronlist
        fi
    fi
done
