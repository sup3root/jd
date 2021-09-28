#!/bin/sh
set -e

# 同步的git仓库 lingfeng0918-jd_scripts star261-jd zero205-JD_tencent_scf 

#    git remote set-url origin "$repo"
#    git reset --hard
#    git -C /dust pull --rebase
#
if [[ ! -d '/repo' ]]; then
    mkdir /repo
fi

if [[ ! -d '/own' ]]; then
    mkdir /own
fi

# 更新repos
repos=$(find /repo -maxdepth 1 -type d \
        -not -path '/repo' \
        -not -path '*curtinlv*' \
        -not -path '*jdHelloWorld*' \
        -not -path '*pycache*' \
        -not -path '*sunert*' \
        -not -path '*classmatelin*' \
        -not -path '*smiek2221*')
for f in $repos
do
    name=${f##*/}
    git -C $f pull >>/scripts/logs/gitpull_${name%%-*}.log 2>&1
    cp -r $f /own/${name%%-*}
    cp -r /own/lingfeng0918/utils /scripts/
done
jsfiles=$(find /own -type f -name 'jd_*.js' \
        -not -path '*utils*' \
        -not -path '*activity*' \
        -not -path '*AutoJS*' \
        -not -path '*back*')
for jsfile in $jsfiles
do
    jsname=${jsfile:5:4}_${jsfile##*/}
    cp $jsfile /scripts/$jsname
done

# js 文件生成 crontab_list.test 
bash /scripts/updateCronlist.sh
echo '已生成 /scripts/docker/crontab_list.test \n请运行diff -u /scripts/docker/crontab_list.sample /scripts/docker/crontab_list.test \n确认是否添加新任务到/scripts/docker/crontab_list.sh \n'

#find /dust -type f -name '*.js' \
#    -not -path '*/backup/*' \
#    -not -path '*/rewrite/*' \
#    -exec cp {} /own \;
#
#for jsname in $(ls /own); do cp /own/${jsname} /scripts/dust_${jsname}; done
#for jsname in $(ls /own); do
#    jsnamecron="$(grep -A1 -E "\[Script\]" /own/$jsname | grep -v Script | cut -d\" -f2)"
#    [[ -z "$jsnamecron" ]] || echo "$jsnamecron node /scripts/dust_${jsname} >> /scripts/logs/dust_${jsname}.log 2>&1" >> /scripts/docker/merged_list_file.sh
#done
