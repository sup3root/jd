SHELL=/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name *.log | grep -v sharecodeCollection | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1
# 配置更新
17 3 * * * sh /scripts/docker/default_task.sh >> /scripts/logs/default_task.log 2>&1
############################################
# 京东资产变动
0 9 * * * node /scripts/zero_jd_bean_change.js >> /scripts/logs/zero_jd_bean_change.log 2>&1
# 领京豆额外奖励
10 7 * * * node /scripts/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1
# 京东多合一签到
0 0 * * * node /scripts/jd_bean_sign.js >> /scripts/logs/jd_bean_sign.log 2>&1
# 省钱大赢家之翻翻乐
20 * * * * node /scripts/jd_big_winner.js >> /scripts/logs/jd_big_winner.log 2>&1
# 口袋书店
1 8,12,18 * * * node /scripts/jd_bookshop.js >> /scripts/logs/jd_bookshop.log 2>&1
# 京东汽车
10 7 * * * node /scripts/jd_car.js >> /scripts/logs/jd_car.log 2>&1
# 京东汽车兑换
0 0 * * * node /scripts/jd_car_exchange.js >> /scripts/logs/jd_car_exchange.log 2>&1
# 京东手机狂欢城
0 0-18/6 * * * node /scripts/jd_carnivalcity.js >> /scripts/logs/jd_carnivalcity.log 2>&1
# 签到领现金
2 0-23/4 * * * node /scripts/jd_cash.js >> /scripts/logs/jd_cash.log 2>&1
# 京喜财富岛
5 8,13,19 * * * node /scripts/jd_cfd.js >> /scripts/logs/jd_cfd.log 2>&1
# 摇京豆
5 0,23 * * * node /scripts/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1
# 天天提鹅
10 * * * * node /scripts/jd_daily_egg.js >> /scripts/logs/jd_daily_egg.log 2>&1
# 小鸽有礼-每日抽奖
13 1,22,23 * * * node /scripts/jd_daily_lottery.js >> /scripts/logs/jd_daily_lottery.log 2>&1
# 京喜工厂
10 * * * * node /scripts/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1
# 京喜工厂
50 * * * * node /scripts/jd_dreamFactory_help.js >> /scripts/logs/jd_dreamFactory_help.log 2>&1
# 东东农场
5 6-18/6 * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1
# 获取互助码
20 13 * * 6 node /scripts/jd_get_share_code.js >> /scripts/logs/jd_get_share_code.log 2>&1
# 金榜创造营
13 1,22 * * * node /scripts/jd_gold_creator.js >> /scripts/logs/jd_gold_creator.log 2>&1
# 东东健康社区
13 1,6,22 * * * node /scripts/jd_health.js >> /scripts/logs/jd_health.log 2>&1
# 东东健康社区收集能量收集
5-45/20 * * * * node /scripts/jd_health_collect.js >> /scripts/logs/jd_health_collect.log 2>&1
# 东东工厂
10 * * * * node /scripts/jd_jdfactory.js >> /scripts/logs/jd_jdfactory.log 2>&1
# 京东赚赚
10 0 * * * node /scripts/jd_jdzz.js >> /scripts/logs/jd_jdzz.log 2>&1
# 领金贴
10 0 * * * node /scripts/jd_jin_tie.js >> /scripts/logs/jd_jin_tie.log 2>&1
# 宠汪汪🐕喂食
15 0-23/1 * * * node /scripts/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1
# 宠汪汪强制为别人助力
0 0 * * * node /scripts/jd_joy_help.js >> /scripts/logs/jd_joy_help.log 2>&1
# 宠汪汪二代目
10 */2 * * * node /scripts/jd_joy_new.js >> /scripts/logs/jd_joy_new.log 2>&1
# 宠汪汪积分兑换奖品
59 7,15,23 * * * node /scripts/jd_joy_reward_new.js >> /scripts/logs/jd_joy_reward_new.log 2>&1
# 宠汪汪赛跑
15 10 * * * node /scripts/jd_joy_run.js >> /scripts/logs/jd_joy_run.log 2>&1
# 宠汪汪偷好友积分与狗粮
10 0-21/3 * * * node /scripts/jd_joy_steal.js >> /scripts/logs/jd_joy_steal.log 2>&1
# 京喜领88元红包
4 10 * * * node /scripts/jd_jxlhb.js >> /scripts/logs/jd_jxlhb.log 2>&1
# 惊喜牧场
20 0-23/3 * * * node /scripts/jd_jxmc.js >> /scripts/logs/jd_jxmc.log 2>&1
# 京东快递签到
10 0 * * * node /scripts/jd_kd.js >> /scripts/logs/jd_kd.log 2>&1
# 京东抽奖机&内部互助
0 0 * * * node /scripts/jd_lotteryMachine.js >> /scripts/logs/jd_lotteryMachine.log 2>&1
# 幸运大转盘
4 10 * * * node /scripts/jd_market_lottery.js >> /scripts/logs/jd_market_lottery.log 2>&1
# 新潮品牌狂欢
4 10 * * * node /scripts/jd_mcxhd.js >> /scripts/logs/jd_mcxhd.log 2>&1
# 集魔方
0 8 * * * node /scripts/jd_mofang.js >> /scripts/logs/jd_mofang.log 2>&1
# 5G超级盲盒
0 0,1-23/3 * * * node /scripts/jd_mohe.js >> /scripts/logs/jd_mohe.log 2>&1
# 京东摇钱树
3 0-23/2 * * * node /scripts/jd_moneyTree.js >> /scripts/logs/jd_moneyTree.log 2>&1
# 京东秒秒币
10 7 * * * node /scripts/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1
# 点点券
20 0,20 * * * node /scripts/jd_necklace.js >> /scripts/logs/jd_necklace.log 2>&1
# 女装盲盒抽京豆
35 1,23 * * * node /scripts/jd_nzmh.js >> /scripts/logs/jd_nzmh.log 2>&1
# 东东萌宠
15 6-18/6 * * * node /scripts/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1
# 金融养猪
12 0-23/6 * * * node /scripts/jd_pigPet.js >> /scripts/logs/jd_pigPet.log 2>&1
# 京东种豆得豆
1 7-21/2 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
# 京东排行榜
0 0 * * * node /scripts/jd_rankingList.js >> /scripts/logs/jd_rankingList.log 2>&1
# 京东全民开红包
1 1,2,23 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1
# 送豆得豆
0 0 * * * node /scripts/jd_sendBeans.js >> /scripts/logs/jd_sendBeans.log 2>&1
# 闪购盲盒
20 8 * * * node /scripts/jd_sgmh.js >> /scripts/logs/jd_sgmh.log 2>&1
# 进店领豆
10 0 * * * node /scripts/jd_shop.js >> /scripts/logs/jd_shop.log 2>&1
# 京东签到图形验证
0 0 * * * node /scripts/jd_sign_graphics.js >> /scripts/logs/jd_sign_graphics.log 2>&1
# 东东小窝
16 22 * * * node /scripts/jd_small_home.js >> /scripts/logs/jd_small_home.log 2>&1
# ✈️天天加速
8 0-23/3 * * * node /scripts/jd_speed.js >> /scripts/logs/jd_speed.log 2>&1
# 京东极速版红包
20 0,22 * * * node /scripts/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1
# 京东极速版
0 7,19 * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1
# 明星小店
0 1,21 * * * node /scripts/jd_star_shop.js >> /scripts/logs/jd_star_shop.log 2>&1
# 东东超市
11 * * * * node /scripts/jd_superMarket.js >> /scripts/logs/jd_superMarket.log 2>&1
# 赚京豆
10 0,7,23 * * * node /scripts/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1
# 取关京东店铺和商品
55 23 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1
# 天天优惠大乐透
15 6 * * * node /scripts/ling_jd_DrawEntrance.js >> /scripts/logs/ling_jd_DrawEntrance.log 2>&1
# MM领京豆
21 9 * * * node /scripts/ling_jd_MMdou.js >> /scripts/logs/ling_jd_MMdou.log 2>&1
# 店铺签到
0 0 * * * node /scripts/ling_jd_ShopSign.js >> /scripts/logs/ling_jd_ShopSign.log 2>&1
# 领京豆额外奖励
23 1,12,22 * * * node /scripts/ling_jd_bean_home.js >> /scripts/logs/ling_jd_bean_home.log 2>&1
# 京东多合一签到
0 0 * * * node /scripts/ling_jd_bean_sign.js >> /scripts/logs/ling_jd_bean_sign.log 2>&1
# 东东超市兑换奖品
59 23 * * * node /scripts/ling_jd_blueCoin.js >> /scripts/logs/ling_jd_blueCoin.log 2>&1
# 口袋书店
1 8,12,18 * * * node /scripts/ling_jd_bookshop.js >> /scripts/logs/ling_jd_bookshop.log 2>&1
# 京东汽车
10 7 * * * node /scripts/ling_jd_car.js >> /scripts/logs/ling_jd_car.log 2>&1
# 京东汽车兑换
0 0 * * * node /scripts/ling_jd_car_exchange.js >> /scripts/logs/ling_jd_car_exchange.log 2>&1
# 京东手机狂欢城
0 0-18/6 * * * node /scripts/ling_jd_carnivalcity.js >> /scripts/logs/ling_jd_carnivalcity.log 2>&1
# 京东手机狂欢城助力
10 0,8 * * * node /scripts/ling_jd_carnivalcity_help.js >> /scripts/logs/ling_jd_carnivalcity_help.log 2>&1
# 签到领现金
2 0-23/4 * * * node /scripts/ling_jd_cash.js >> /scripts/logs/ling_jd_cash.log 2>&1
# 签到领现金兑换
0 0 * * * node /scripts/ling_jd_cash_exchange.js >> /scripts/logs/ling_jd_cash_exchange.log 2>&1
# 领券中心签到
15 0 * * * node /scripts/ling_jd_ccSign.js >> /scripts/logs/ling_jd_ccSign.log 2>&1
# 京喜财富岛
0 0 * * * node /scripts/ling_jd_cfd.js >> /scripts/logs/ling_jd_cfd.log 2>&1
# 摇京豆
5 0,23 * * * node /scripts/ling_jd_club_lottery.js >> /scripts/logs/ling_jd_club_lottery.log 2>&1
# 内容鉴赏官
15 3,6 * * * node /scripts/ling_jd_connoisseur.js >> /scripts/logs/ling_jd_connoisseur.log 2>&1
# 天天提鹅
10 * * * * node /scripts/ling_jd_daily_egg.js >> /scripts/logs/ling_jd_daily_egg.log 2>&1
# 小鸽有礼-每日抽奖
13 1,22,23 * * * node /scripts/ling_jd_daily_lottery.js >> /scripts/logs/ling_jd_daily_lottery.log 2>&1
# 东东玩家
0 9 * * * node /scripts/ling_jd_ddwj.js >> /scripts/logs/ling_jd_ddwj.log 2>&1
# 热血心跳,狂解压
0 0 * * * node /scripts/ling_jd_decompression.js >> /scripts/logs/ling_jd_decompression.log 2>&1
# 金榜创造营
13 1,22 * * * node /scripts/ling_jd_gold_creator.js >> /scripts/logs/ling_jd_gold_creator.log 2>&1
# 东东健康社区
13 1,6,22 * * * node /scripts/ling_jd_health.js >> /scripts/logs/ling_jd_health.log 2>&1
# 东东健康社区收集能量收集
5-45/20 * * * * node /scripts/ling_jd_health_collect.js >> /scripts/logs/ling_jd_health_collect.log 2>&1
# 京东众筹好物上新
0 0 * * * node /scripts/ling_jd_hwsx.js >> /scripts/logs/ling_jd_hwsx.log 2>&1
# 东东工厂
10 * * * * node /scripts/ling_jd_jdfactory.js >> /scripts/logs/ling_jd_jdfactory.log 2>&1
# 京东赚赚
10 0 * * * node /scripts/ling_jd_jdzz.js >> /scripts/logs/ling_jd_jdzz.log 2>&1
# 领金贴
10 15 * * * node /scripts/ling_jd_jin_tie.js >> /scripts/logs/ling_jd_jin_tie.log 2>&1
# 宠汪汪
15 0-23/2 * * * node /scripts/ling_jd_joy.js >> /scripts/logs/ling_jd_joy.log 2>&1
# 宠汪汪🐕喂食
15 0-23/1 * * * node /scripts/ling_jd_joy_feedPets.js >> /scripts/logs/ling_jd_joy_feedPets.log 2>&1
# 宠汪汪积分兑换奖品
59 7,15,23 * * * node /scripts/ling_jd_joy_reward.js >> /scripts/logs/ling_jd_joy_reward.log 2>&1
# 宠汪汪赛跑
15 10 * * * node /scripts/ling_jd_joy_run.js >> /scripts/logs/ling_jd_joy_run.log 2>&1
# 宠汪汪偷好友积分与狗粮
10 0-21/3 * * * node /scripts/ling_jd_joy_steal.js >> /scripts/logs/ling_jd_joy_steal.log 2>&1
# 汪汪乐园养joy
20 0-23/3 * * * node /scripts/ling_jd_joypark_joy.js >> /scripts/logs/ling_jd_joypark_joy.log 2>&1
# 汪汪乐园开工位
20 9 * * * node /scripts/ling_jd_joypark_open.js >> /scripts/logs/ling_jd_joypark_open.log 2>&1
# 汪汪乐园每日任务
20 7,9,17,20 * * * node /scripts/ling_jd_joypark_task.js >> /scripts/logs/ling_jd_joypark_task.log 2>&1
# 京喜签到
20 1,8 * * * node /scripts/ling_jd_jxSign.js >> /scripts/logs/ling_jd_jxSign.log 2>&1
# 京小鸽吾悦寄
0 0 * * * node /scripts/ling_jd_jxg.js >> /scripts/logs/ling_jd_jxg.log 2>&1
# 京喜领88元红包
4 2,10 * * * node /scripts/ling_jd_jxlhb.js >> /scripts/logs/ling_jd_jxlhb.log 2>&1
# 京喜牧场
20 0-23/3 * * * node /scripts/ling_jd_jxmc.js >> /scripts/logs/ling_jd_jxmc.log 2>&1
# 惊喜牧场助力
10 0-23/3 * * * node /scripts/ling_jd_jxmczl.js >> /scripts/logs/ling_jd_jxmczl.log 2>&1
# 京东快递签到
10 0 * * * node /scripts/ling_jd_kd.js >> /scripts/logs/ling_jd_kd.log 2>&1
# 来电好物季
35 8 * * * node /scripts/ling_jd_ldhwj.js >> /scripts/logs/ling_jd_ldhwj.log 2>&1
# 京东直播
# 超级直播间红包雨
# 京东抽奖机
0 0 * * * node /scripts/ling_jd_lotteryMachine.js >> /scripts/logs/ling_jd_lotteryMachine.log 2>&1
# 京东零食街
0 0 * * * node /scripts/ling_jd_lsj.js >> /scripts/logs/ling_jd_lsj.log 2>&1
# 幸运大转盘
4 10 * * * node /scripts/ling_jd_market_lottery.js >> /scripts/logs/ling_jd_market_lottery.log 2>&1
# 全民摸冰
6 9,12 * * * node /scripts/ling_jd_mb.js >> /scripts/logs/ling_jd_mb.log 2>&1
# 新潮品牌狂欢
4 10 * * * node /scripts/ling_jd_mcxhd.js >> /scripts/logs/ling_jd_mcxhd.log 2>&1
# 集魔方
0 9 * * * node /scripts/ling_jd_mofang.js >> /scripts/logs/ling_jd_mofang.log 2>&1
# 5G超级盲盒
0 0,1-23/3 * * * node /scripts/ling_jd_mohe.js >> /scripts/logs/ling_jd_mohe.log 2>&1
# 京东摇钱树
3 0-23/2 * * * node /scripts/ling_jd_moneyTree.js >> /scripts/logs/ling_jd_moneyTree.log 2>&1
# 京东秒秒币
10 7 * * * node /scripts/ling_jd_ms.js >> /scripts/logs/ling_jd_ms.log 2>&1
# 点点券
20 0,20 * * * node /scripts/ling_jd_necklace.js >> /scripts/logs/ling_jd_necklace.log 2>&1
# 女装盲盒抽京豆
35 7,23 * * * node /scripts/ling_jd_nzmh.js >> /scripts/logs/ling_jd_nzmh.log 2>&1
# 金融养猪
12 0-23/6 * * * node /scripts/ling_jd_pigPet.js >> /scripts/logs/ling_jd_pigPet.log 2>&1
# 京享值PK
0 9 * * * node /scripts/ling_jd_pk.js >> /scripts/logs/ling_jd_pk.log 2>&1
# 东东泡泡大战
 1 0 * * node /scripts/ling_jd_ppdz.js >> /scripts/logs/ling_jd_ppdz.log 2>&1
# 京东价格保护
# 特务Z
0 0 * * * node /scripts/ling_jd_productZ4Brand.js >> /scripts/logs/ling_jd_productZ4Brand.log 2>&1
# 全民挖现金
0 0 * * * node /scripts/ling_jd_qmwxj.js >> /scripts/logs/ling_jd_qmwxj.log 2>&1
# QQ星系牧场
30 7 * * * node /scripts/ling_jd_qqxing.js >> /scripts/logs/ling_jd_qqxing.log 2>&1
# 8.4-8.15 七夕情报局🐶
36 0,10,21 4-15 8 * node /scripts/ling_jd_qxqbj.js >> /scripts/logs/ling_jd_qxqbj.log 2>&1
# 企有此礼
0 0 * * * node /scripts/ling_jd_qycl.js >> /scripts/logs/ling_jd_qycl.log 2>&1
# 京东排行榜
11 9 * * * node /scripts/ling_jd_rankingList.js >> /scripts/logs/ling_jd_rankingList.log 2>&1
# 京东全民开红包
1 1,2,23 * * * node /scripts/ling_jd_redPacket.js >> /scripts/logs/ling_jd_redPacket.log 2>&1
# 荣耀换新
20 8 * * * node /scripts/ling_jd_ryhx.js >> /scripts/logs/ling_jd_ryhx.log 2>&1
# 送豆得豆
45 1,12 * * * node /scripts/ling_jd_senbeans.js >> /scripts/logs/ling_jd_senbeans.log 2>&1
# 闪购盲盒
20 8 * * * node /scripts/ling_jd_sgmh.js >> /scripts/logs/ling_jd_sgmh.log 2>&1
# 进店领豆
10 0 * * * node /scripts/ling_jd_shop.js >> /scripts/logs/ling_jd_shop.log 2>&1
# 京东签到图形验证
0 0 * * * node /scripts/ling_jd_sign_graphics.js >> /scripts/logs/ling_jd_sign_graphics.log 2>&1
# 东东小窝
16 22 * * * node /scripts/ling_jd_small_home.js >> /scripts/logs/ling_jd_small_home.log 2>&1
# ✈️天天加速
8 0-23/3 * * * node /scripts/ling_jd_speed.js >> /scripts/logs/ling_jd_speed.log 2>&1
# 京东极速版红包
20 0,22 * * * node /scripts/ling_jd_speed_redpocke.js >> /scripts/logs/ling_jd_speed_redpocke.log 2>&1
# 京东极速版
0 7 * * * node /scripts/ling_jd_speed_sign.js >> /scripts/logs/ling_jd_speed_sign.log 2>&1
# 明星小店
13 9 * * * node /scripts/ling_jd_star_shop.js >> /scripts/logs/ling_jd_star_shop.log 2>&1
# 东东超市
11 * * * * node /scripts/ling_jd_superMarket.js >> /scripts/logs/ling_jd_superMarket.log 2>&1
# 赚京豆
10 0,7,23 * * * node /scripts/ling_jd_syj.js >> /scripts/logs/ling_jd_syj.log 2>&1
# 天天赚京豆
20 8 * * * node /scripts/ling_jd_ttzjd.js >> /scripts/logs/ling_jd_ttzjd.log 2>&1
# 特务Z行动-星小店
0 0 * * * node /scripts/ling_jd_twz_star.js >> /scripts/logs/ling_jd_twz_star.log 2>&1
# 京东众筹许愿池
0 0 * * * node /scripts/ling_jd_wish.js >> /scripts/logs/ling_jd_wish.log 2>&1
# 东东世界
0 0 * * * node /scripts/ling_jd_work_ddworld.js >> /scripts/logs/ling_jd_work_ddworld.log 2>&1
# 粉丝互动
0 0 * * * node /scripts/ling_jd_wxFans.js >> /scripts/logs/ling_jd_wxFans.log 2>&1
# 柠檬伊利养牛记
0 12 * * * node /scripts/ling_jd_ylyn.js >> /scripts/logs/ling_jd_ylyn.log 2>&1
# 柠檬邀请有礼
0 10 * * * node /scripts/ling_jd_yqyl.js >> /scripts/logs/ling_jd_yqyl.log 2>&1
# 柠檬赚金币
0 5 * * * node /scripts/ling_jd_zjb.js >> /scripts/logs/ling_jd_zjb.log 2>&1
# 东东世界
0 8,18 * * * node /scripts/star_jd_ddworld.js >> /scripts/logs/star_jd_ddworld.log 2>&1
# 热血心跳,狂解压
0 9 * * * node /scripts/star_jd_decompression.js >> /scripts/logs/star_jd_decompression.log 2>&1
# 粉丝互动
0 9 * * * node /scripts/star_jd_fan.js >> /scripts/logs/star_jd_fan.log 2>&1
# 惊喜牧场
0 9 * * * node /scripts/star_jd_jxmc.js >> /scripts/logs/star_jd_jxmc.log 2>&1
# 特务Z
0 0 * * * node /scripts/star_jd_productZ4Brand.js >> /scripts/logs/star_jd_productZ4Brand.log 2>&1
# 明星小店
0 9 * * * node /scripts/star_jd_star_shop.js >> /scripts/logs/star_jd_star_shop.log 2>&1
# 古蜀寻宝
0 9 * * * node /scripts/star_jd_xinxiangyin.js >> /scripts/logs/star_jd_xinxiangyin.log 2>&1
# 领京豆额外奖励
10 7 * * * node /scripts/zero_jd_bean_home.js >> /scripts/logs/zero_jd_bean_home.log 2>&1
# 东东超市兑换奖品
59 23 * * * node /scripts/zero_jd_blueCoin.js >> /scripts/logs/zero_jd_blueCoin.log 2>&1
# 口袋书店
1 8,12,18 * * * node /scripts/zero_jd_bookshop.js >> /scripts/logs/zero_jd_bookshop.log 2>&1
# 京东汽车
10 7 * * * node /scripts/zero_jd_car.js >> /scripts/logs/zero_jd_car.log 2>&1
# 京东汽车兑换
0 0 * * * node /scripts/zero_jd_car_exchange.js >> /scripts/logs/zero_jd_car_exchange.log 2>&1
# 京东手机狂欢城
0 0-18/6 * * * node /scripts/zero_jd_carnivalcity.js >> /scripts/logs/zero_jd_carnivalcity.log 2>&1
# 签到领现金
2 0-23/4 * * * node /scripts/zero_jd_cash.js >> /scripts/logs/zero_jd_cash.log 2>&1
# 领券中心签到
15 0 * * * node /scripts/zero_jd_ccSign.js >> /scripts/logs/zero_jd_ccSign.log 2>&1
# 京喜财富岛
5 0,6-23 * * * node /scripts/zero_jd_cfd.js >> /scripts/logs/zero_jd_cfd.log 2>&1
# 摇京豆
5 0,23 * * * node /scripts/zero_jd_club_lottery.js >> /scripts/logs/zero_jd_club_lottery.log 2>&1
# 内容鉴赏官
15 3,6 * * * node /scripts/zero_jd_connoisseur.js >> /scripts/logs/zero_jd_connoisseur.log 2>&1
# 东东乐园
30 7 * * * node /scripts/zero_jd_ddly.js >> /scripts/logs/zero_jd_ddly.log 2>&1
# 东东世界
15 3,9 * * * node /scripts/zero_jd_ddworld.js >> /scripts/logs/zero_jd_ddworld.log 2>&1
# 热血心跳,狂解压
0 0 * * * node /scripts/zero_jd_decompression.js >> /scripts/logs/zero_jd_decompression.log 2>&1
# 店铺签到
0 0 * * * node /scripts/zero_jd_dpqd.js >> /scripts/logs/zero_jd_dpqd.log 2>&1
# 积分换话费
6 9 * * * node /scripts/zero_jd_dwapp.js >> /scripts/logs/zero_jd_dwapp.log 2>&1
# 赚30元
9 9 * * * node /scripts/zero_jd_earn30.js >> /scripts/logs/zero_jd_earn30.log 2>&1
# 粉丝互动
0 0 * * * node /scripts/zero_jd_fan.js >> /scripts/logs/zero_jd_fan.log 2>&1
# 发财大赢家助力
1 6-22/3 * * * node /scripts/zero_jd_fcdyj.js >> /scripts/logs/zero_jd_fcdyj.log 2>&1
# 金榜创造营
13 0,22 * * * node /scripts/zero_jd_gold_creator.js >> /scripts/logs/zero_jd_gold_creator.log 2>&1
# 东东健康社区
13 0,6,22 * * * node /scripts/zero_jd_health.js >> /scripts/logs/zero_jd_health.log 2>&1
# 东东工厂
10 0,6-23 * * * node /scripts/zero_jd_jdfactory.js >> /scripts/logs/zero_jd_jdfactory.log 2>&1
# 京东赚赚
10 0 * * * node /scripts/zero_jd_jdzz.js >> /scripts/logs/zero_jd_jdzz.log 2>&1
# 领金贴
10 0 * * * node /scripts/zero_jd_jin_tie.js >> /scripts/logs/zero_jd_jin_tie.log 2>&1
# 集魔方
2 8,20 * * * node /scripts/zero_jd_jmf.js >> /scripts/logs/zero_jd_jmf.log 2>&1
# 宠汪汪
15 0-23/2 * * * node /scripts/zero_jd_joy.js >> /scripts/logs/zero_jd_joy.log 2>&1
# 汪汪乐园养joy
20 0-23/3 * * * node /scripts/zero_jd_joy_park.js >> /scripts/logs/zero_jd_joy_park.log 2>&1
# 汪汪乐园过新手任务
11 9 * * * node /scripts/zero_jd_joy_park_newtask.js >> /scripts/logs/zero_jd_joy_park_newtask.log 2>&1
# 汪汪乐园每日任务
0 0,7,9,17,20 * * * node /scripts/zero_jd_joy_park_task.js >> /scripts/logs/zero_jd_joy_park_task.log 2>&1
# 宠汪汪积分兑换奖品
59 7,15,23 * * * node /scripts/zero_jd_joy_reward.js >> /scripts/logs/zero_jd_joy_reward.log 2>&1
# 宠汪汪赛跑
45 14,19 * * * node /scripts/zero_jd_joy_run.js >> /scripts/logs/zero_jd_joy_run.log 2>&1
# 宠汪汪偷好友积分与狗粮
10 0-21/3 * * * node /scripts/zero_jd_joy_steal.js >> /scripts/logs/zero_jd_joy_steal.log 2>&1
# 跳跳乐瓜分京豆
1 0,11,21 * * * node /scripts/zero_jd_jump.js >> /scripts/logs/zero_jd_jump.log 2>&1
# 京小鸽吾悦寄
7 9 * * * node /scripts/zero_jd_jxg.js >> /scripts/logs/zero_jd_jxg.log 2>&1
# 京喜领88元红包
4 10,16,21,16,21 * * * node /scripts/zero_jd_jxlhb.js >> /scripts/logs/zero_jd_jxlhb.log 2>&1
# 惊喜牧场
0 0 * * * node /scripts/zero_jd_jxmc.js >> /scripts/logs/zero_jd_jxmc.log 2>&1
# 京东快递签到
10 0 * * * node /scripts/zero_jd_kd.js >> /scripts/logs/zero_jd_kd.log 2>&1
# MM领京豆
21 9 * * * node /scripts/zero_jd_ljd.js >> /scripts/logs/zero_jd_ljd.log 2>&1
# 柠檬京东零食街
0 0 * * * node /scripts/zero_jd_lsj.js >> /scripts/logs/zero_jd_lsj.log 2>&1
# 5G超级盲盒
0 0,1-23/3 * * * node /scripts/zero_jd_mohe.js >> /scripts/logs/zero_jd_mohe.log 2>&1
# 京东摇钱树
3 0-23/2 * * * node /scripts/zero_jd_moneyTree.js >> /scripts/logs/zero_jd_moneyTree.log 2>&1
# 京东摇钱树助力
30 0,6-23 * * * node /scripts/zero_jd_moneyTree_help.js >> /scripts/logs/zero_jd_moneyTree_help.log 2>&1
# 京东秒秒币
10 7 * * * node /scripts/zero_jd_ms.js >> /scripts/logs/zero_jd_ms.log 2>&1
# 女装盲盒抽京豆
35 8,12 * * * node /scripts/zero_jd_nzmh.js >> /scripts/logs/zero_jd_nzmh.log 2>&1
# 金融养猪
12 0-23/6 * * * node /scripts/zero_jd_pigPet.js >> /scripts/logs/zero_jd_pigPet.log 2>&1
# QQ星系牧场
45 0,6-23/2 * * * node /scripts/zero_jd_qqxing.js >> /scripts/logs/zero_jd_qqxing.log 2>&1
# 京东排行榜
11 9 * * * node /scripts/zero_jd_rankingList.js >> /scripts/logs/zero_jd_rankingList.log 2>&1
# 京东全民开红包
1 7,12,20 * * * node /scripts/zero_jd_redPacket.js >> /scripts/logs/zero_jd_redPacket.log 2>&1
# 送豆得豆
45 1,12 * * * node /scripts/zero_jd_sddd.js >> /scripts/logs/zero_jd_sddd.log 2>&1
# 闪购盲盒
20 8 * * * node /scripts/zero_jd_sgmh.js >> /scripts/logs/zero_jd_sgmh.log 2>&1
# 进店领豆
0 0 * * * node /scripts/zero_jd_shop.js >> /scripts/logs/zero_jd_shop.log 2>&1
# 京东签到图形验证
0 0 * * * node /scripts/zero_jd_sign_graphics.js >> /scripts/logs/zero_jd_sign_graphics.log 2>&1
# 东东小窝
16 22 * * * node /scripts/zero_jd_small_home.js >> /scripts/logs/zero_jd_small_home.log 2>&1
# 京东极速版红包
20 0,22 * * * node /scripts/zero_jd_speed_redpocke.js >> /scripts/logs/zero_jd_speed_redpocke.log 2>&1
# 京东极速版
0 7 * * * node /scripts/zero_jd_speed_sign.js >> /scripts/logs/zero_jd_speed_sign.log 2>&1
# 明星小店
1 9 * * * node /scripts/zero_jd_star_shop.js >> /scripts/logs/zero_jd_star_shop.log 2>&1
# 特物Z|万物皆可国创
30 11 * * * node /scripts/zero_jd_superBrand.js >> /scripts/logs/zero_jd_superBrand.log 2>&1
# 东东超市
11 0,6-23 * * * node /scripts/zero_jd_superMarket.js >> /scripts/logs/zero_jd_superMarket.log 2>&1
# 赚京豆
10 0,7,23 * * * node /scripts/zero_jd_syj.js >> /scripts/logs/zero_jd_syj.log 2>&1
# 众筹许愿池
40 0,2 * * * node /scripts/zero_jd_wish.js >> /scripts/logs/zero_jd_wish.log 2>&1
# 柠檬我是大老板农场
5 0-23/6 * * * node /scripts/zero_jd_wsdlb.js >> /scripts/logs/zero_jd_wsdlb.log 2>&1
# 健康社区收取能量
25 0,6-23 * * * node /scripts/zero_jd_z_health_energy.js >> /scripts/logs/zero_jd_z_health_energy.log 2>&1
# 柠檬赚金币
0 7 * * * node /scripts/zero_jd_zjb.js >> /scripts/logs/zero_jd_zjb.log 2>&1
# 天天拼图
20 0,16 * * * node /scripts/zero_jd_ttpt.js >> /scripts/logs/zero_jd_ttpt.log 2>&1
