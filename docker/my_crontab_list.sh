# update source code
23 */4 * * * git -C /repo/jdHelloWorld/ pull >> /scripts/logs/gitpull_jdhw.log 2>&1 && cp /repo/jdHelloWorld/jd_*.js /scripts/ && cp -r /repo/jdHelloWorld/utils/ /scripts/
29 */4 * * * git -C /repo/smiek2221-scripts/ pull >> /scripts/logs/gitpull_smi.log 2>&1 && cp /repo/smiek2221-scripts/*.js /scripts/
39 4 * * * git -C /repo/curtinlvJD-script/ pull >> /scripts/logs/gitpull_cur.log 2>&1
19 4 */2 * * cd /repo/classmatelin-jd_scripts && git pull >> /scripts/logs/gitpull_class.log 2>&1
13 3 */2 * * cd /repo/sunert-script && git pull >> /scripts/logs/gitpull_sunert.log 2>&1
19 10,21 * * * sh /scripts/docker/diy.sh >>/scripts/logs/diy.log 2>&1

# 多合一签到
#3 0 * * * node /scripts/JD_DailyBonus.js >>/scripts/logs/JD_DailyBonus.log 2>&1
# 只开卡不关注
50 7,14 * * * . /repo/.bashrc && bash /repo/curtinlvJD-script/run.sh -r /repo/curtinlvJD-script/OpenCard/jd_OpenCard.py >/dev/null 2>&1
# 财富大陆（京喜财富岛）
#13 */2 * * * node /scripts/gua_wealth_island.js >> /scripts/logs/gua_wealth_island.log 2>&1
# 升级赚京豆
11 9 * * * node /scripts/gua_MMdou.js >> /scripts/logs/gua_MMdou.log 2>&1
# 京东超市兑换
#59 23 * * * . /repo/.bashrc && python /repo/curtinlvJD-script/jd_blueCoin.py >>/scripts/logs/jd_blueCoin.log 2>&1
# 农场补充任务
58 10,11 * * * node /scripts/jd_fruit_moreTask.js >>/scripts/logs/jd_fruit_moreTask.log 2>&1
# 东东世界
#14 10,16,22 * * * node /scripts/jd_ddWorld.js >>/scripts/logs/jd_ddWorld.log 2>&1



#开卡和关注
#59 7,14 * * * bash /repo/curtinlvJD-script/run.sh OpenCard getFollowGifts >/dev/null 2>&1
