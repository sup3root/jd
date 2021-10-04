#!/bin/sh
set -e

# 同步的git仓库 lingfeng0918-jd_scripts star261-jd zero205-JD_tencent_scf aaron-lv-sync 

if [[ ! -d '/repo' ]]; then
    mkdir /repo
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
    cd $f
    echo "$f"
    git fetch --all
    git reset --hard origin/$(git branch --show-current)
    jsfiles=$(find $f -type f -name 'jd_*.js' \
                -not -path '*utils*' \
                -not -path '*activity*' \
                -not -path '*AutoJS*' \
                -not -path '*back*')
    for jsfile in $jsfiles
    do
        jsname=${jsfile:6:4}_${jsfile##*/}
        cp $jsfile /scripts/$jsname
    done
done

cp -r /repo/lingfeng0918-jd_scripts/utils/ /scripts/

# js 文件生成 crontab_list.test 
bash /scripts/updateCronlist.sh
echo -e '已生成 /scripts/docker/crontab_list.test\n请运行diff -u /scripts/docker/crontab_list.sample /scripts/docker/crontab_list.test\n确认是否添加新任务到/scripts/docker/crontab_list.sh'
