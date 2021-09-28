SHELL=/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name *.log | grep -v sharecodeCollection | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect |ts >> /scripts/logs/auto_help_collect.log 2>&1
# 配置更新
17 3 * * * sh /scripts/docker/default_task.sh |ts >> /scripts/logs/default_task.log 2>&1
############################################
# 京东资产变动
0 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_bean_change.js |ts >> /scripts/logs/zero_jd_bean_change.log 2>&1
# 领京豆额外奖励
10 7 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_bean_home.js |ts >> /scripts/logs/jd_bean_home.log 2>&1
# 京东多合一签到
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_bean_sign.js |ts >> /scripts/logs/jd_bean_sign.log 2>&1
# 美丽研究院
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_beauty.js |ts >> /scripts/logs/jd_beauty.log 2>&1
# 省钱大赢家之翻翻乐
20 * * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_big_winner.js |ts >> /scripts/logs/jd_big_winner.log 2>&1
# 口袋书店
1 8,12,18 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_bookshop.js |ts >> /scripts/logs/jd_bookshop.log 2>&1
# 京东汽车
10 7 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_car.js |ts >> /scripts/logs/jd_car.log 2>&1
# 京东汽车兑换
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_car_exchange.js |ts >> /scripts/logs/jd_car_exchange.log 2>&1
# 京东手机狂欢城
0 0-18/6 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_carnivalcity.js |ts >> /scripts/logs/jd_carnivalcity.log 2>&1
# 签到领现金
2 0-23/4 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_cash.js |ts >> /scripts/logs/jd_cash.log 2>&1
# 京喜财富岛
5 8,13,19 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_cfd.js |ts >> /scripts/logs/jd_cfd.log 2>&1
# 摇京豆
5 0,23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_club_lottery.js |ts >> /scripts/logs/jd_club_lottery.log 2>&1
# 天天提鹅
10 * * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_daily_egg.js |ts >> /scripts/logs/jd_daily_egg.log 2>&1
# 小鸽有礼-每日抽奖
# 京喜工厂
10 * * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_dreamFactory.js |ts >> /scripts/logs/jd_dreamFactory.log 2>&1
# 京喜工厂
50 * * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_dreamFactory_help.js |ts >> /scripts/logs/jd_dreamFactory_help.log 2>&1
# 东东农场
5 6-18/6 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_fruit.js |ts >> /scripts/logs/jd_fruit.log 2>&1
# 获取互助码
20 13 * * 6  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_get_share_code.js |ts >> /scripts/logs/jd_get_share_code.log 2>&1
# 金榜创造营
13 1,22 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_gold_creator.js |ts >> /scripts/logs/jd_gold_creator.log 2>&1
# 东东健康社区
13 1,6,22 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_health.js |ts >> /scripts/logs/jd_health.log 2>&1
# 东东健康社区收集能量收集
5-45/20 * * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_health_collect.js |ts >> /scripts/logs/jd_health_collect.log 2>&1
# 东东工厂
10 * * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_jdfactory.js |ts >> /scripts/logs/jd_jdfactory.log 2>&1
# 京东赚赚
10 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_jdzz.js |ts >> /scripts/logs/jd_jdzz.log 2>&1
# 领金贴
10 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_jin_tie.js |ts >> /scripts/logs/jd_jin_tie.log 2>&1
# 宠汪汪🐕喂食
15 0-23/1 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_joy_feedPets.js |ts >> /scripts/logs/jd_joy_feedPets.log 2>&1
# 宠汪汪强制为别人助力
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_joy_help.js |ts >> /scripts/logs/jd_joy_help.log 2>&1
# 宠汪汪二代目
10 */2 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_joy_new.js |ts >> /scripts/logs/jd_joy_new.log 2>&1
# 宠汪汪积分兑换奖品
59 7,15,23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_joy_reward_new.js |ts >> /scripts/logs/jd_joy_reward_new.log 2>&1
# 宠汪汪赛跑
15 10 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_joy_run.js |ts >> /scripts/logs/jd_joy_run.log 2>&1
# 宠汪汪偷好友积分与狗粮
10 0-21/3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_joy_steal.js |ts >> /scripts/logs/jd_joy_steal.log 2>&1
# 京喜领88元红包
4 10 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_jxlhb.js |ts >> /scripts/logs/jd_jxlhb.log 2>&1
# 惊喜牧场
20 0-23/3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_jxmc.js |ts >> /scripts/logs/jd_jxmc.log 2>&1
# 京东快递签到
10 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_kd.js |ts >> /scripts/logs/jd_kd.log 2>&1
# 京东抽奖机&内部互助
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_lotteryMachine.js |ts >> /scripts/logs/jd_lotteryMachine.log 2>&1
# 幸运大转盘
4 10 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_market_lottery.js |ts >> /scripts/logs/jd_market_lottery.log 2>&1
# 新潮品牌狂欢
4 10 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_mcxhd.js |ts >> /scripts/logs/jd_mcxhd.log 2>&1
# 集魔方
0 8 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_mofang.js |ts >> /scripts/logs/jd_mofang.log 2>&1
# 5G超级盲盒
0 0,1-23/3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_mohe.js |ts >> /scripts/logs/jd_mohe.log 2>&1
# 京东摇钱树
3 0-23/2 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_moneyTree.js |ts >> /scripts/logs/jd_moneyTree.log 2>&1
# 京东秒秒币
10 7 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_ms.js |ts >> /scripts/logs/jd_ms.log 2>&1
# 点点券
20 0,20 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_necklace.js |ts >> /scripts/logs/jd_necklace.log 2>&1
# 女装盲盒抽京豆
# 东东萌宠
15 6-18/6 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_pet.js |ts >> /scripts/logs/jd_pet.log 2>&1
# 金融养猪
12 0-23/6 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_pigPet.js |ts >> /scripts/logs/jd_pigPet.log 2>&1
# 京东种豆得豆
1 7-21/2 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_plantBean.js |ts >> /scripts/logs/jd_plantBean.log 2>&1
# 京东排行榜
# 京东全民开红包
1 1,2,23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_redPacket.js |ts >> /scripts/logs/jd_redPacket.log 2>&1
# 送豆得豆
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_sendBeans.js |ts >> /scripts/logs/jd_sendBeans.log 2>&1
# 闪购盲盒
20 8 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_sgmh.js |ts >> /scripts/logs/jd_sgmh.log 2>&1
# 进店领豆
10 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_shop.js |ts >> /scripts/logs/jd_shop.log 2>&1
# 京东签到图形验证
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_sign_graphics.js |ts >> /scripts/logs/jd_sign_graphics.log 2>&1
# 东东小窝
16 22 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_small_home.js |ts >> /scripts/logs/jd_small_home.log 2>&1
# ✈️天天加速
8 0-23/3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_speed.js |ts >> /scripts/logs/jd_speed.log 2>&1
# 京东极速版红包
20 0,22 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_speed_redpocke.js |ts >> /scripts/logs/jd_speed_redpocke.log 2>&1
# 京东极速版
0 7,19 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_speed_sign.js |ts >> /scripts/logs/jd_speed_sign.log 2>&1
# 明星小店
0 1,21 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_star_shop.js |ts >> /scripts/logs/jd_star_shop.log 2>&1
# 东东超市
11 * * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_superMarket.js |ts >> /scripts/logs/jd_superMarket.log 2>&1
# 赚京豆
10 0,7,23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_syj.js |ts >> /scripts/logs/jd_syj.log 2>&1
# 取关京东店铺和商品
55 23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_unsubscribe.js |ts >> /scripts/logs/jd_unsubscribe.log 2>&1
# 天天优惠大乐透
15 6 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_DrawEntrance.js |ts >> /scripts/logs/ling_jd_DrawEntrance.log 2>&1
# MM领京豆
21 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_MMdou.js |ts >> /scripts/logs/ling_jd_MMdou.log 2>&1
# 店铺签到
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_ShopSign.js |ts >> /scripts/logs/ling_jd_ShopSign.log 2>&1
# 领京豆额外奖励
23 1,12,22 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_bean_home.js |ts >> /scripts/logs/ling_jd_bean_home.log 2>&1
# 京东多合一签到
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_bean_sign.js |ts >> /scripts/logs/ling_jd_bean_sign.log 2>&1
# 美丽研究院
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_beauty.js |ts >> /scripts/logs/ling_jd_beauty.log 2>&1
# 省钱大赢家之翻翻乐
20 * * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_big_winner.js |ts >> /scripts/logs/ling_jd_big_winner.log 2>&1
# 东东超市兑换奖品
59 23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_blueCoin.js |ts >> /scripts/logs/ling_jd_blueCoin.log 2>&1
# 口袋书店
1 8,12,18 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_bookshop.js |ts >> /scripts/logs/ling_jd_bookshop.log 2>&1
# 京东汽车
10 7 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_car.js |ts >> /scripts/logs/ling_jd_car.log 2>&1
# 京东汽车兑换
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_car_exchange.js |ts >> /scripts/logs/ling_jd_car_exchange.log 2>&1
# 京东手机狂欢城
0 0-18/6 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_carnivalcity.js |ts >> /scripts/logs/ling_jd_carnivalcity.log 2>&1
# 京东手机狂欢城助力
10 0,8 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_carnivalcity_help.js |ts >> /scripts/logs/ling_jd_carnivalcity_help.log 2>&1
# 签到领现金
2 0-23/4 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_cash.js |ts >> /scripts/logs/ling_jd_cash.log 2>&1
# 签到领现金兑换
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_cash_exchange.js |ts >> /scripts/logs/ling_jd_cash_exchange.log 2>&1
# 领券中心签到
15 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_ccSign.js |ts >> /scripts/logs/ling_jd_ccSign.log 2>&1
# 京喜财富岛
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_cfd.js |ts >> /scripts/logs/ling_jd_cfd.log 2>&1
# 京喜财富岛热气球挂机
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_cfd_loop.js |ts >> /scripts/logs/ling_jd_cfd_loop.log 2>&1
# 摇京豆
5 0,23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_club_lottery.js |ts >> /scripts/logs/ling_jd_club_lottery.log 2>&1
# 内容鉴赏官
15 3,6 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_connoisseur.js |ts >> /scripts/logs/ling_jd_connoisseur.log 2>&1
# 天天提鹅
10 * * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_daily_egg.js |ts >> /scripts/logs/ling_jd_daily_egg.log 2>&1
# 小鸽有礼-每日抽奖
# 东东玩家
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_ddwj.js |ts >> /scripts/logs/ling_jd_ddwj.log 2>&1
# 热血心跳,狂解压
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_decompression.js |ts >> /scripts/logs/ling_jd_decompression.log 2>&1
# 金榜创造营
13 1,22 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_gold_creator.js |ts >> /scripts/logs/ling_jd_gold_creator.log 2>&1
# 东东健康社区
13 1,6,22 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_health.js |ts >> /scripts/logs/ling_jd_health.log 2>&1
# 东东健康社区收集能量收集
5-45/20 * * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_health_collect.js |ts >> /scripts/logs/ling_jd_health_collect.log 2>&1
# 京东众筹好物上新
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_hwsx.js |ts >> /scripts/logs/ling_jd_hwsx.log 2>&1
# 东东工厂
10 * * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_jdfactory.js |ts >> /scripts/logs/ling_jd_jdfactory.log 2>&1
# 京东赚赚
10 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_jdzz.js |ts >> /scripts/logs/ling_jd_jdzz.log 2>&1
# 领金贴
10 15 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_jin_tie.js |ts >> /scripts/logs/ling_jd_jin_tie.log 2>&1
# 宠汪汪
15 0-23/2 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_joy.js |ts >> /scripts/logs/ling_jd_joy.log 2>&1
# 宠汪汪🐕喂食
15 0-23/1 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_joy_feedPets.js |ts >> /scripts/logs/ling_jd_joy_feedPets.log 2>&1
# 宠汪汪积分兑换奖品
59 7,15,23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_joy_reward.js |ts >> /scripts/logs/ling_jd_joy_reward.log 2>&1
# 宠汪汪赛跑
15 10 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_joy_run.js |ts >> /scripts/logs/ling_jd_joy_run.log 2>&1
# 宠汪汪偷好友积分与狗粮
10 0-21/3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_joy_steal.js |ts >> /scripts/logs/ling_jd_joy_steal.log 2>&1
# 汪汪乐园养joy
20 0-23/3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_joypark_joy.js |ts >> /scripts/logs/ling_jd_joypark_joy.log 2>&1
# 汪汪乐园开工位
20 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_joypark_open.js |ts >> /scripts/logs/ling_jd_joypark_open.log 2>&1
# 汪汪乐园每日任务
20 7,9,17,20 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_joypark_task.js |ts >> /scripts/logs/ling_jd_joypark_task.log 2>&1
# 京喜签到
20 1,8 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_jxSign.js |ts >> /scripts/logs/ling_jd_jxSign.log 2>&1
# 京小鸽吾悦寄
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_jxg.js |ts >> /scripts/logs/ling_jd_jxg.log 2>&1
# 京喜领88元红包
4 2,10 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_jxlhb.js |ts >> /scripts/logs/ling_jd_jxlhb.log 2>&1
# 京喜牧场
20 0-23/3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_jxmc.js |ts >> /scripts/logs/ling_jd_jxmc.log 2>&1
# 惊喜牧场助力
10 0-23/3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_jxmczl.js |ts >> /scripts/logs/ling_jd_jxmczl.log 2>&1
# 京东快递签到
10 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_kd.js |ts >> /scripts/logs/ling_jd_kd.log 2>&1
# 来电好物季
35 8 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_ldhwj.js |ts >> /scripts/logs/ling_jd_ldhwj.log 2>&1
# 京东直播
# 超级直播间红包雨
# 京东抽奖机
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_lotteryMachine.js |ts >> /scripts/logs/ling_jd_lotteryMachine.log 2>&1
# 京东零食街
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_lsj.js |ts >> /scripts/logs/ling_jd_lsj.log 2>&1
# 幸运大转盘
4 10 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_market_lottery.js |ts >> /scripts/logs/ling_jd_market_lottery.log 2>&1
# 全民摸冰
6 9,12 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_mb.js |ts >> /scripts/logs/ling_jd_mb.log 2>&1
# 新潮品牌狂欢
4 10 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_mcxhd.js |ts >> /scripts/logs/ling_jd_mcxhd.log 2>&1
# 集魔方
0 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_mofang.js |ts >> /scripts/logs/ling_jd_mofang.log 2>&1
# 5G超级盲盒
0 0,1-23/3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_mohe.js |ts >> /scripts/logs/ling_jd_mohe.log 2>&1
# 京东摇钱树
3 0-23/2 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_moneyTree.js |ts >> /scripts/logs/ling_jd_moneyTree.log 2>&1
# 京东秒秒币
10 7 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_ms.js |ts >> /scripts/logs/ling_jd_ms.log 2>&1
# 点点券
20 0,20 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_necklace.js |ts >> /scripts/logs/ling_jd_necklace.log 2>&1
# 女装盲盒抽京豆
# 金融养猪
12 0-23/6 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_pigPet.js |ts >> /scripts/logs/ling_jd_pigPet.log 2>&1
# 京享值PK
0 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_pk.js |ts >> /scripts/logs/ling_jd_pk.log 2>&1
# 东东泡泡大战
 1 0 * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_ppdz.js |ts >> /scripts/logs/ling_jd_ppdz.log 2>&1
# 京东价格保护
# 特务Z
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_productZ4Brand.js |ts >> /scripts/logs/ling_jd_productZ4Brand.log 2>&1
# 全民挖现金
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_qmwxj.js |ts >> /scripts/logs/ling_jd_qmwxj.log 2>&1
# QQ星系牧场
30 7 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_qqxing.js |ts >> /scripts/logs/ling_jd_qqxing.log 2>&1
# 8.4-8.15 七夕情报局🐶
36 0,10,21 4-15 8 *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_qxqbj.js |ts >> /scripts/logs/ling_jd_qxqbj.log 2>&1
# 企有此礼
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_qycl.js |ts >> /scripts/logs/ling_jd_qycl.log 2>&1
# 京东排行榜
# 京东全民开红包
1 1,2,23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_redPacket.js |ts >> /scripts/logs/ling_jd_redPacket.log 2>&1
# 荣耀换新
20 8 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_ryhx.js |ts >> /scripts/logs/ling_jd_ryhx.log 2>&1
# 送豆得豆
45 1,12 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_senbeans.js |ts >> /scripts/logs/ling_jd_senbeans.log 2>&1
# 闪购盲盒
20 8 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_sgmh.js |ts >> /scripts/logs/ling_jd_sgmh.log 2>&1
# 进店领豆
10 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_shop.js |ts >> /scripts/logs/ling_jd_shop.log 2>&1
# 京东签到图形验证
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_sign_graphics.js |ts >> /scripts/logs/ling_jd_sign_graphics.log 2>&1
# 东东小窝
16 22 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_small_home.js |ts >> /scripts/logs/ling_jd_small_home.log 2>&1
# ✈️天天加速
8 0-23/3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_speed.js |ts >> /scripts/logs/ling_jd_speed.log 2>&1
# 京东极速版红包
20 0,22 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_speed_redpocke.js |ts >> /scripts/logs/ling_jd_speed_redpocke.log 2>&1
# 京东极速版
0 7 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_speed_sign.js |ts >> /scripts/logs/ling_jd_speed_sign.log 2>&1
# 明星小店
13 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_star_shop.js |ts >> /scripts/logs/ling_jd_star_shop.log 2>&1
# 东东超市
11 * * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_superMarket.js |ts >> /scripts/logs/ling_jd_superMarket.log 2>&1
# 赚京豆
10 0,7,23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_syj.js |ts >> /scripts/logs/ling_jd_syj.log 2>&1
# 天天赚京豆
20 8 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_ttzjd.js |ts >> /scripts/logs/ling_jd_ttzjd.log 2>&1
# 特物Z简爱
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_twlove.js |ts >> /scripts/logs/ling_jd_twlove.log 2>&1
# 特务Z行动-星小店
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_twz_star.js |ts >> /scripts/logs/ling_jd_twz_star.log 2>&1
# 推一推
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_tyt.js |ts >> /scripts/logs/ling_jd_tyt.log 2>&1
# 京东众筹许愿池
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_wish.js |ts >> /scripts/logs/ling_jd_wish.log 2>&1
# 东东世界
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_work_ddworld.js |ts >> /scripts/logs/ling_jd_work_ddworld.log 2>&1
# 粉丝互动
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_wxFans.js |ts >> /scripts/logs/ling_jd_wxFans.log 2>&1
# 柠檬伊利养牛记
0 12 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_ylyn.js |ts >> /scripts/logs/ling_jd_ylyn.log 2>&1
# 柠檬邀请有礼
0 10 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_yqyl.js |ts >> /scripts/logs/ling_jd_yqyl.log 2>&1
# 柠檬赚金币
0 5 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/ling_jd_zjb.js |ts >> /scripts/logs/ling_jd_zjb.log 2>&1
# 东东世界
0 8,18 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/star_jd_ddworld.js |ts >> /scripts/logs/star_jd_ddworld.log 2>&1
# 热血心跳,狂解压
0 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/star_jd_decompression.js |ts >> /scripts/logs/star_jd_decompression.log 2>&1
# 粉丝互动
0 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/star_jd_fan.js |ts >> /scripts/logs/star_jd_fan.log 2>&1
# 惊喜牧场
0 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/star_jd_jxmc.js |ts >> /scripts/logs/star_jd_jxmc.log 2>&1
# 特务Z
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/star_jd_productZ4Brand.js |ts >> /scripts/logs/star_jd_productZ4Brand.log 2>&1
# 明星小店
0 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/star_jd_star_shop.js |ts >> /scripts/logs/star_jd_star_shop.log 2>&1
# 古蜀寻宝
0 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/star_jd_xinxiangyin.js |ts >> /scripts/logs/star_jd_xinxiangyin.log 2>&1
# 领京豆额外奖励
10 7 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_bean_home.js |ts >> /scripts/logs/zero_jd_bean_home.log 2>&1
# 美丽研究院
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_beauty.js |ts >> /scripts/logs/zero_jd_beauty.log 2>&1
# 省钱大赢家之翻翻乐
20 0,6-23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_big_winner.js |ts >> /scripts/logs/zero_jd_big_winner.log 2>&1
# 东东超市兑换奖品
59 23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_blueCoin.js |ts >> /scripts/logs/zero_jd_blueCoin.log 2>&1
# 口袋书店
1 8,12,18 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_bookshop.js |ts >> /scripts/logs/zero_jd_bookshop.log 2>&1
# 京东汽车
10 7 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_car.js |ts >> /scripts/logs/zero_jd_car.log 2>&1
# 京东汽车兑换
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_car_exchange.js |ts >> /scripts/logs/zero_jd_car_exchange.log 2>&1
# 京东手机狂欢城
0 0-18/6 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_carnivalcity.js |ts >> /scripts/logs/zero_jd_carnivalcity.log 2>&1
# 签到领现金
2 0-23/4 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_cash.js |ts >> /scripts/logs/zero_jd_cash.log 2>&1
# 领券中心签到
15 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_ccSign.js |ts >> /scripts/logs/zero_jd_ccSign.log 2>&1
# 京喜财富岛
5 0,6-23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_cfd.js |ts >> /scripts/logs/zero_jd_cfd.log 2>&1
# 京喜财富岛热气球挂机
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_cfd_loop.js |ts >> /scripts/logs/zero_jd_cfd_loop.log 2>&1
# 京喜财富岛合成月饼
10 6,13,23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_cfd_mooncake.js |ts >> /scripts/logs/zero_jd_cfd_mooncake.log 2>&1
# 摇京豆
5 0,23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_club_lottery.js |ts >> /scripts/logs/zero_jd_club_lottery.log 2>&1
# 内容鉴赏官
15 3,6 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_connoisseur.js |ts >> /scripts/logs/zero_jd_connoisseur.log 2>&1
# 东东乐园
30 7 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_ddly.js |ts >> /scripts/logs/zero_jd_ddly.log 2>&1
# 东东世界
15 3,9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_ddworld.js |ts >> /scripts/logs/zero_jd_ddworld.log 2>&1
# 热血心跳,狂解压
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_decompression.js |ts >> /scripts/logs/zero_jd_decompression.log 2>&1
# 店铺签到
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_dpqd.js |ts >> /scripts/logs/zero_jd_dpqd.log 2>&1
# 积分换话费
6 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_dwapp.js |ts >> /scripts/logs/zero_jd_dwapp.log 2>&1
# 赚30元
9 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_earn30.js |ts >> /scripts/logs/zero_jd_earn30.log 2>&1
# 粉丝互动
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_fan.js |ts >> /scripts/logs/zero_jd_fan.log 2>&1
# 发财大赢家助力
1 6-22/3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_fcdyj.js |ts >> /scripts/logs/zero_jd_fcdyj.log 2>&1
# 金榜创造营
13 0,22 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_gold_creator.js |ts >> /scripts/logs/zero_jd_gold_creator.log 2>&1
# 东东健康社区
13 0,6,22 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_health.js |ts >> /scripts/logs/zero_jd_health.log 2>&1
# 东东工厂
10 0,6-23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_jdfactory.js |ts >> /scripts/logs/zero_jd_jdfactory.log 2>&1
# 京东赚赚
10 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_jdzz.js |ts >> /scripts/logs/zero_jd_jdzz.log 2>&1
# 领金贴
10 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_jin_tie.js |ts >> /scripts/logs/zero_jd_jin_tie.log 2>&1
# 集魔方
2 8,20 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_jmf.js |ts >> /scripts/logs/zero_jd_jmf.log 2>&1
# 宠汪汪
15 0-23/2 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_joy.js |ts >> /scripts/logs/zero_jd_joy.log 2>&1
# 汪汪乐园养joy
20 0-23/3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_joy_park.js |ts >> /scripts/logs/zero_jd_joy_park.log 2>&1
# 汪汪乐园过新手任务
11 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_joy_park_newtask.js |ts >> /scripts/logs/zero_jd_joy_park_newtask.log 2>&1
# 汪汪乐园每日任务
0 0,7,9,17,20 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_joy_park_task.js |ts >> /scripts/logs/zero_jd_joy_park_task.log 2>&1
# 宠汪汪积分兑换奖品
59 7,15,23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_joy_reward.js |ts >> /scripts/logs/zero_jd_joy_reward.log 2>&1
# 宠汪汪赛跑
45 14,19 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_joy_run.js |ts >> /scripts/logs/zero_jd_joy_run.log 2>&1
# 宠汪汪偷好友积分与狗粮
10 0-21/3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_joy_steal.js |ts >> /scripts/logs/zero_jd_joy_steal.log 2>&1
# 跳跳乐瓜分京豆
1 0,11,21 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_jump.js |ts >> /scripts/logs/zero_jd_jump.log 2>&1
# 京小鸽吾悦寄
7 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_jxg.js |ts >> /scripts/logs/zero_jd_jxg.log 2>&1
# 京喜领88元红包
4 10,16,21,16,21 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_jxlhb.js |ts >> /scripts/logs/zero_jd_jxlhb.log 2>&1
# 惊喜牧场
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_jxmc.js |ts >> /scripts/logs/zero_jd_jxmc.log 2>&1
# 京东快递签到
10 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_kd.js |ts >> /scripts/logs/zero_jd_kd.log 2>&1
# MM领京豆
21 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_ljd.js |ts >> /scripts/logs/zero_jd_ljd.log 2>&1
# 柠檬京东零食街
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_lsj.js |ts >> /scripts/logs/zero_jd_lsj.log 2>&1
# 5G超级盲盒
0 0,1-23/3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_mohe.js |ts >> /scripts/logs/zero_jd_mohe.log 2>&1
# 京东摇钱树
3 0-23/2 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_moneyTree.js |ts >> /scripts/logs/zero_jd_moneyTree.log 2>&1
# 京东摇钱树助力
30 0,6-23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_moneyTree_help.js |ts >> /scripts/logs/zero_jd_moneyTree_help.log 2>&1
# 京东秒秒币
10 7 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_ms.js |ts >> /scripts/logs/zero_jd_ms.log 2>&1
# 女装盲盒抽京豆
# 金融养猪
12 0-23/6 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_pigPet.js |ts >> /scripts/logs/zero_jd_pigPet.log 2>&1
# QQ星系牧场
45 0,6-23/2 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_qqxing.js |ts >> /scripts/logs/zero_jd_qqxing.log 2>&1
# 京东排行榜
# 京东全民开红包
1 7,12,20 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_redPacket.js |ts >> /scripts/logs/zero_jd_redPacket.log 2>&1
# 送豆得豆
45 1,12 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_sddd.js |ts >> /scripts/logs/zero_jd_sddd.log 2>&1
# 闪购盲盒
20 8 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_sgmh.js |ts >> /scripts/logs/zero_jd_sgmh.log 2>&1
# 进店领豆
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_shop.js |ts >> /scripts/logs/zero_jd_shop.log 2>&1
# 京东签到图形验证
0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_sign_graphics.js |ts >> /scripts/logs/zero_jd_sign_graphics.log 2>&1
# 东东小窝
16 22 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_small_home.js |ts >> /scripts/logs/zero_jd_small_home.log 2>&1
# 京东极速版红包
20 0,22 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_speed_redpocke.js |ts >> /scripts/logs/zero_jd_speed_redpocke.log 2>&1
# 京东极速版
0 7 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_speed_sign.js |ts >> /scripts/logs/zero_jd_speed_sign.log 2>&1
# 明星小店
1 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_star_shop.js |ts >> /scripts/logs/zero_jd_star_shop.log 2>&1
# 特物Z|万物皆可国创
30 11 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_superBrand.js |ts >> /scripts/logs/zero_jd_superBrand.log 2>&1
# 东东超市
11 0,6-23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_superMarket.js |ts >> /scripts/logs/zero_jd_superMarket.log 2>&1
# 赚京豆
10 0,7,23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_syj.js |ts >> /scripts/logs/zero_jd_syj.log 2>&1
# 柠檬推一推
0 6-23/4 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_tyt.js |ts >> /scripts/logs/zero_jd_tyt.log 2>&1
# 众筹许愿池
40 0,2 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_wish.js |ts >> /scripts/logs/zero_jd_wish.log 2>&1
# 柠檬我是大老板农场
5 0-23/6 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_wsdlb.js |ts >> /scripts/logs/zero_jd_wsdlb.log 2>&1
# 健康社区收取能量
25 0,6-23 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_z_health_energy.js |ts >> /scripts/logs/zero_jd_z_health_energy.log 2>&1
# 柠檬赚金币
0 7 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/zero_jd_zjb.js |ts >> /scripts/logs/zero_jd_zjb.log 2>&1

# update source code
23 */4 * * * git -C /repo/jdHelloWorld/ pull |ts >> /scripts/logs/gitpull_jdhw.log 2>&1 && cp -r /repo/jdHelloWorld/jd_*.js /scripts/
29 */4 * * * git -C /repo/smiek2221-scripts/ pull |ts >> /scripts/logs/gitpull_smi.log 2>&1 && cp -r /repo/smiek2221-scripts/* /scripts/
39 4 */2 * * git -C /repo/curtinlvJD-script/ pull |ts >> /scripts/logs/gitpull_cur.log 2>&1
19 */8 * * * cd /repo/classmatelin-jd_scripts && git pull |ts >> /scripts/logs/gitpull_class.log 2>&1
13 3 */2 * * cd /repo/sunert-script && git pull |ts >> /scripts/logs/gitpull_sunert.log 2>&1
19 2 * * * sh /scripts/docker/diy.sh |ts >>/scripts/logs/diy.log 2>&1

# 签到图形验证版
3 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_sign_graphics.js |ts >> /scripts/logs/jd_sign_graphics.log 2>&1
# 只开卡不关注
58 7,14 * * * . /repo/.bashrc && bash /repo/curtinlvJD-script/run.sh -r /repo/curtinlvJD-script/OpenCard/jd_OpenCard.py >/dev/null 2>&1
# 财富大陆（京喜财富岛）
13 */2 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/gua_wealth_island.js |ts >> /scripts/logs/gua_wealth_island.log 2>&1
# 财富大陆互助
13 0,1,9,14,18 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/gua_wealth_island_help.js |ts >> /scripts/logs/gua_wealth_island_help.log 2>&1
# 升级赚京豆
11 9 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/gua_MMdou.js |ts >> /scripts/logs/gua_MMdou.log 2>&1
# 京东超市兑换
59 23 * * * . /repo/.bashrc && python /repo/curtinlvJD-script/jd_blueCoin.py |ts >>/scripts/logs/jd_blueCoin.log 2>&1
# 东东玩家9.17-10.11
3 10,20 1-11,22-30 9,10 *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/gua_ddgame.js |ts >>/scripts/logs/gua_ddgame.log 2>&1
# 京喜工厂助力
40 */6 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_dreamFactory_help.js |ts >> /scripts/logs/jd_dreamFactory_help.log 2>&1
# 手机狂欢城 9.16-10.1
#0 0-18/6 16-30 9 *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/gua_carnivalcity.js |ts >>/scripts/logs/gua_carnivalcity.log 2>&1
0 0-18/6 16-30 9 *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_carnivalcity.js |ts >>/scripts/logs/jd_carnivalcity.log 2>&1
# 农场补充任务
58 10,11 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_fruit_moreTask.js |ts >>/scripts/logs/jd_fruit_moreTask.log 2>&1
# 东东世界
14 10,16,22 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_ddWorld.js |ts >>/scripts/logs/jd_ddWorld.log 2>&1



#开卡和关注
#59 7,14 * * * bash /repo/curtinlvJD-script/run.sh OpenCard getFollowGifts >/dev/null 2>&1
#签到领现金助力
#全民抢京豆(7.2-7.15)
#3 0 2-15 7 * python /repo/curtinlvJD-script/jd_qjd.py |ts >> /scripts/logs/jd_qjd.log 2>&1
# 京东汽车(签到满500赛点可兑换500京豆)
#59 23 * * * sleep 59;  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_car.js >/dev/null 2>&1
#0 0 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_car.js >/dev/null 2>&1
#59 23 * * * sleep 61;  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_car.js >/dev/null 2>&1    
## 宠汪汪积分兑换京豆
#59 7,15,23 * * * sleep 59;  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_joy_reward.js |ts >>/scripts/logs/jd_joy_reward.log 2>&1
#0 0,8,16 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && spnode  /scripts/jd_joy_reward.js >/dev/null 2>&1

