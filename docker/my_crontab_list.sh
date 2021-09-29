# update source code
23 */4 * * * git -C /repo/jdHelloWorld/ pull >> /scripts/logs/gitpull_jdhw.log 2>&1 && cp -r /repo/jdHelloWorld/jd_*.js /scripts/
29 */4 * * * git -C /repo/smiek2221-scripts/ pull >> /scripts/logs/gitpull_smi.log 2>&1 && cp -r /repo/smiek2221-scripts/*.js /scripts/
39 4 */2 * * git -C /repo/curtinlvJD-script/ pull >> /scripts/logs/gitpull_cur.log 2>&1
19 */8 * * * cd /repo/classmatelin-jd_scripts && git pull >> /scripts/logs/gitpull_class.log 2>&1
13 3 */2 * * cd /repo/sunert-script && git pull >> /scripts/logs/gitpull_sunert.log 2>&1
19 10,20 * * * sh /scripts/docker/diy.sh >>/scripts/logs/diy.log 2>&1

# 签到图形验证版
3 0 * * * node /scripts/jd_sign_graphics.js >> /scripts/logs/jd_sign_graphics.log 2>&1
# 只开卡不关注
50 7,14 * * * . /repo/.bashrc && bash /repo/curtinlvJD-script/run.sh -r /repo/curtinlvJD-script/OpenCard/jd_OpenCard.py >/dev/null 2>&1
# 财富大陆（京喜财富岛）
13 */2 * * * node /scripts/gua_wealth_island.js >> /scripts/logs/gua_wealth_island.log 2>&1
# 财富大陆互助
13 0,1,9,14,18 * * * node /scripts/gua_wealth_island_help.js >> /scripts/logs/gua_wealth_island_help.log 2>&1
# 升级赚京豆
11 9 * * * node /scripts/gua_MMdou.js >> /scripts/logs/gua_MMdou.log 2>&1
# 京东超市兑换
59 23 * * * . /repo/.bashrc && python /repo/curtinlvJD-script/jd_blueCoin.py >>/scripts/logs/jd_blueCoin.log 2>&1
# 京喜工厂助力
40 */6 * * * node /scripts/jd_dreamFactory_help.js >> /scripts/logs/jd_dreamFactory_help.log 2>&1
# 手机狂欢城 9.16-10.1
#0 0-18/6 16-30 9 * node /scripts/gua_carnivalcity.js >>/scripts/logs/gua_carnivalcity.log 2>&1
0 0-18/6 16-30 9 * node /scripts/jd_carnivalcity.js >>/scripts/logs/jd_carnivalcity.log 2>&1
# 农场补充任务
58 10,11 * * * node /scripts/jd_fruit_moreTask.js >>/scripts/logs/jd_fruit_moreTask.log 2>&1
# 东东世界
14 10,16,22 * * * node /scripts/jd_ddWorld.js >>/scripts/logs/jd_ddWorld.log 2>&1



#开卡和关注
#59 7,14 * * * bash /repo/curtinlvJD-script/run.sh OpenCard getFollowGifts >/dev/null 2>&1
#签到领现金助力
#0 0 * * * python /repo/curtinlvJD-script/jd_cashHelp.py >> /scripts/logs/jd_cashHelp.log 2>&1
#全民抢京豆(7.2-7.15)
#3 0 2-15 7 * python /repo/curtinlvJD-script/jd_qjd.py >> /scripts/logs/jd_qjd.log 2>&1
# 京东汽车(签到满500赛点可兑换500京豆)
#59 23 * * * sleep 59; node /scripts/jd_car.js >/dev/null 2>&1
#0 0 * * * node /scripts/jd_car.js >/dev/null 2>&1
#59 23 * * * sleep 61; node /scripts/jd_car.js >/dev/null 2>&1    
## 宠汪汪积分兑换京豆
#59 7,15,23 * * * sleep 59; node /scripts/jd_joy_reward.js >>/scripts/logs/jd_joy_reward.log 2>&1
#0 0,8,16 * * * node /scripts/jd_joy_reward.js >/dev/null 2>&1

