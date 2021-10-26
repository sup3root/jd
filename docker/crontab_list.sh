SHELL=/bin/bash 
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin 
# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重) 
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf 
# 收集助力码 
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1 
# 配置更新 
17 3 * * * . /repo/addenv && bash /scripts/docker/default_task.sh >> /scripts/logs/default_task.log 2>&1
###################临时取消运行#############################
# 宠汪汪积分兑换奖品
59 7,15,23 * * * node /scripts/aaro_jd_joy_reward.js >> /scripts/logs/aaro_jd_joy_reward.log 2>&1
#59 7,15,23 * * * node /scripts/zero_jd_joy_reward.js >> /scripts/logs/zero_jd_joy_reward.log 2>&1
#59 7,15,23 * * * node /scripts/jd_joy_reward_new.js >> /scripts/logs/jd_joy_reward_new.log 2>&1
59 7,15,23 * * * node /scripts/ling_jd_joy_reward.js >> /scripts/logs/ling_jd_joy_reward.log 2>&1
# 京喜财富岛
5 0,6-23 * * * node /scripts/zero_jd_cfd.js >> /scripts/logs/zero_jd_cfd.log 2>&1
30 * * * * node /scripts/zero_jd_cfd_loop.js >> /scripts/logs/zero_jd_cfd_loop.log 2>&1
# 省钱大赢家之翻翻乐
#20 0,6-23 * * * node /scripts/zero_jd_big_winner.js >> /scripts/logs/zero_jd_big_winner.log 2>&1
# 店铺签到
#0 0 * * *  node /scripts/zero_jd_dpqd.js >> /scripts/logs/zero_jd_dpqd.log 2>&1
# 京东试用
#0 9 * * * node /scripts/zero_jd_try.js >> /scripts/logs/zero_jd_try.log 2>&1
###################临时取消运行#############################
# 京东汽车兑换
0 0 * * * node /scripts/zero_jd_car_exchange.js >> /scripts/logs/zero_jd_car_exchange.log 2>&1
0 0 * * * node /scripts/ling_jd_car_exchange.js >> /scripts/logs/ling_jd_car_exchange.log 2>&1
# 5G超级盲盒
0 0,1-23/3 * * * node /scripts/jd_mohe.js >> /scripts/logs/jd_mohe.log 2>&1
0 0,1-23/3 * * * node /scripts/zero_jd_mohe.js >> /scripts/logs/zero_jd_mohe.log 2>&1
# MM领京豆
21 9 * * * node /scripts/zero_jd_ljd.js >> /scripts/logs/zero_jd_ljd.log 2>&1
# QQ星系牧场
#45 0,6-23/2 * * * node /scripts/zero_jd_qqxing.js >> /scripts/logs/zero_jd_qqxing.log 2>&1
# ✈️天天加速
8 0-23/3 * * * node /scripts/jd_speed.js >> /scripts/logs/jd_speed.log 2>&1
# 东东世界
15 3,9 * * * node /scripts/zero_jd_ddworld.js >> /scripts/logs/zero_jd_ddworld.log 2>&1
# 东东乐园
30 7 * * * node /scripts/zero_jd_ddly.js >> /scripts/logs/zero_jd_ddly.log 2>&1
# 东东健康社区
13 0,6,22 * * * node /scripts/zero_jd_health.js >> /scripts/logs/zero_jd_health.log 2>&1
13 1,6,22 * * * node /scripts/jd_health.js >> /scripts/logs/jd_health.log 2>&1
# 东东健康社区收集能量收集
5-45/20 * * * * node /scripts/jd_health_collect.js >> /scripts/logs/jd_health_collect.log 2>&1
# 东东农场
5 6-18/6 * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1
# 东东小窝
16 22 * * * node /scripts/zero_jd_small_home.js >> /scripts/logs/zero_jd_small_home.log 2>&1
# 东东工厂
10 * * * * node /scripts/jd_jdfactory.js >> /scripts/logs/jd_jdfactory.log 2>&1
# 东东泡泡大战
 1 0 * * node /scripts/ling_jd_ppdz.js >> /scripts/logs/ling_jd_ppdz.log 2>&1
# 东东超市
11 0,6-23 * * * node /scripts/zero_jd_superMarket.js >> /scripts/logs/zero_jd_superMarket.log 2>&1
# 东东超市兑换奖品
#59 23 * * * node /scripts/zero_jd_blueCoin.js >> /scripts/logs/zero_jd_blueCoin.log 2>&1
# 京东全民开红包
1 1,2,23 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1
1 7,12,20 * * * node /scripts/zero_jd_redPacket.js >> /scripts/logs/zero_jd_redPacket.log 2>&1
# 京东到家果园任务
5 0,8,11,17 * * *  node /scripts/ling_jd_jddj_fruit.js >> /scripts/logs/ling_jd_jddj_fruit.log 2>&1
# 京东到家果园水车收水滴任务
0 9 * * * node /scripts/ling_jd_jddj_collectWater.js >> /scripts/logs/ling_jd_jddj_collectWater.log 2>&1
# 京东到家鲜豆任务
0 9 * * * node /scripts/ling_jd_jddj_bean.js >> /scripts/logs/ling_jd_jddj_bean.log 2>&1
# 京东到家鲜豆庄园
0 9 * * * node /scripts/ling_jd_jddj_plantBeans.js >> /scripts/logs/ling_jd_jddj_plantBeans.log 2>&1
# 京东到家鲜豆庄园收水滴
0 9 * * * node /scripts/ling_jd_jddj_getPoints.js >> /scripts/logs/ling_jd_jddj_getPoints.log 2>&1
# 京东小魔方
31 2,8 * * * node /scripts/zero_jd_jmf.js >> /scripts/logs/zero_jd_jmf.log 2>&1
# 京东快递签到
10 0 * * * node /scripts/zero_jd_kd.js >> /scripts/logs/zero_jd_kd.log 2>&1
# 京东抽奖机
0 9 * * * node /scripts/aaro_jd_lotteryMachine.js >> /scripts/logs/aaro_jd_lotteryMachine.log 2>&1
# 京东摇钱树
3 0-23/2 * * * node /scripts/zero_jd_moneyTree.js >> /scripts/logs/zero_jd_moneyTree.log 2>&1
# 京东摇钱树助力
30 0,6-23 * * * node /scripts/zero_jd_moneyTree_help.js >> /scripts/logs/zero_jd_moneyTree_help.log 2>&1
# 京东极速版
0 7 * * * node /scripts/zero_jd_speed_sign.js >> /scripts/logs/zero_jd_speed_sign.log 2>&1
# 京东极速版红包
20 0,22 * * * node /scripts/zero_jd_speed_redpocke.js >> /scripts/logs/zero_jd_speed_redpocke.log 2>&1
# 京东汽车
10 7 * * * node /scripts/zero_jd_car.js >> /scripts/logs/zero_jd_car.log 2>&1
# 京东种豆得豆
1 7-21/2 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
# 京东秒秒币
10 7 * * * node /scripts/zero_jd_ms.js >> /scripts/logs/zero_jd_ms.log 2>&1
# 京东签到图形验证
14 10 * * *  node /scripts/zero_jd_sign_graphics.js >> /scripts/logs/zero_jd_sign_graphics.log 2>&1
# 京东资产变动
0 8 * * * node /scripts/zero_jd_bean_change.js >> /scripts/logs/zero_jd_bean_change.log 2>&1
# 京东赚赚
10 0 * * * node /scripts/zero_jd_jdzz.js >> /scripts/logs/zero_jd_jdzz.log 2>&1
# 京东零食街
0 9 * * * node /scripts/ling_jd_lsj.js >> /scripts/logs/ling_jd_lsj.log 2>&1
# 京享值PK
15 0,6,13,19,21 * * *  node /scripts/ling_jd_pk.js >> /scripts/logs/ling_jd_pk.log 2>&1
# 京喜工厂
10 * * * * node /scripts/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1
# 京喜工厂
50 * * * * node /scripts/jd_dreamFactory_help.js >> /scripts/logs/jd_dreamFactory_help.log 2>&1
# 京喜签到
20 1,8 * * * node /scripts/ling_jd_jxSign.js >> /scripts/logs/ling_jd_jxSign.log 2>&1
# 京喜财富岛
#5 * * * * node /scripts/aaro_jd_cfd.js >> /scripts/logs/aaro_jd_cfd.log 2>&1
# 京喜领88元红包
4 10,16,21,16,21 * * * node /scripts/zero_jd_jxlhb.js >> /scripts/logs/zero_jd_jxlhb.log 2>&1
# 京小鸽吾悦寄
0 9 * * * node /scripts/zero_jd_jxg.js >> /scripts/logs/zero_jd_jxg.log 2>&1
# 企有此礼
0 9 * * * node /scripts/ling_jd_qycl.js >> /scripts/logs/ling_jd_qycl.log 2>&1
# 众筹许愿池
40 0,2 * * * node /scripts/zero_jd_wish.js >> /scripts/logs/zero_jd_wish.log 2>&1
# 健康社区收取能量
45 6-23/2 * * * node /scripts/zero_jd_z_health_energy.js >> /scripts/logs/zero_jd_z_health_energy.log 2>&1
# 全民挖现金
0 9 * * * node /scripts/ling_jd_qmwxj.js >> /scripts/logs/ling_jd_qmwxj.log 2>&1
# 全民摸冰
#6 9,12 * * * node /scripts/ling_jd_mb.js >> /scripts/logs/ling_jd_mb.log 2>&1
# 取关京东店铺和商品
55 23 * * * node /scripts/zero_jd_unsubscribe.js >> /scripts/logs/zero_jd_unsubscribe.log 2>&1
# 取关所有主播
55 6 * * * node /scripts/zero_jd_unsubscriLive.js >> /scripts/logs/zero_jd_unsubscriLive.log 2>&1
# 口袋书店
#1 8,12,18 * * * node /scripts/zero_jd_bookshop.js >> /scripts/logs/zero_jd_bookshop.log 2>&1
# 古蜀寻宝
12 9,15 1-30 9,10 *  node /scripts/star_jd_xinxiangyin.js >> /scripts/logs/star_jd_xinxiangyin.log 2>&1
# 天天优惠大乐透
15 6 * * * node /scripts/ling_jd_DrawEntrance.js >> /scripts/logs/ling_jd_DrawEntrance.log 2>&1
# 天天拼图
20 0,16 * * * node /scripts/zero_jd_ttpt.js >> /scripts/logs/zero_jd_ttpt.log 2>&1
# 天天提鹅
10 * * * * node /scripts/jd_daily_egg.js >> /scripts/logs/jd_daily_egg.log 2>&1
# 天天赚京豆
20 8 * * * node /scripts/ling_jd_ttzjd.js >> /scripts/logs/ling_jd_ttzjd.log 2>&1
# 宠汪汪二代目
13 6-18/6 * * * node /scripts/jd_joy_new.js >> /scripts/logs/jd_joy_new.log 2>&1
# 宠汪汪偷好友积分与狗粮
10 0-21/3 * * * node /scripts/jd_joy_steal.js >> /scripts/logs/jd_joy_steal.log 2>&1
# 宠汪汪赛跑
#15 10 * * * node /scripts/jd_joy_run.js >> /scripts/logs/jd_joy_run.log 2>&1
15 10 * * * node /scripts/zero_jd_joy_run.js >> /scripts/logs/zero_jd_joy_run.log 2>&1
# 宠汪汪🐕喂食
15 0-23/1 * * * node /scripts/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1
# 小鸽有礼-每日抽奖
13 1,22,23 * * * node /scripts/ling_jd_daily_lottery.js >> /scripts/logs/ling_jd_daily_lottery.log 2>&1
# 幸运大转盘
4 10 * * * node /scripts/ling_jd_market_lottery.js >> /scripts/logs/ling_jd_market_lottery.log 2>&1
# 惊喜牧场
20 */3 * * * node /scripts/zero_jd_jxmc.js >> /scripts/logs/zero_jd_jxmc.log 2>&1
# 摇京豆
5 0,23 * * * node /scripts/zero_jd_club_lottery.js >> /scripts/logs/zero_jd_club_lottery.log 2>&1
# 新潮品牌狂欢
4 10 * * * node /scripts/ling_jd_mcxhd.js >> /scripts/logs/ling_jd_mcxhd.log 2>&1
# 明星小店
12 19 19-30 9 *  node /scripts/zero_jd_star_shop.js >> /scripts/logs/zero_jd_star_shop.log 2>&1
# 来电好物季
#35 8 * * * node /scripts/ling_jd_ldhwj.js >> /scripts/logs/ling_jd_ldhwj.log 2>&1
# 柠檬京东零食街
0 9 * * * node /scripts/zero_jd_lsj.js >> /scripts/logs/zero_jd_lsj.log 2>&1
# 柠檬伊利养牛记
0 12 * * * node /scripts/ling_jd_ylyn.js >> /scripts/logs/ling_jd_ylyn.log 2>&1
# 柠檬推一推
0 6-23/4 * * * node /scripts/zero_jd_tyt.js >> /scripts/logs/zero_jd_tyt.log 2>&1
# 柠檬赚金币
0 7 * * * node /scripts/zero_jd_zjb.js >> /scripts/logs/zero_jd_zjb.log 2>&1
# 汪汪乐园养joy
#20 0-23/3 * * * node /scripts/zero_jd_joy_park.js >> /scripts/logs/zero_jd_joy_park.log 2>&1
# 汪汪乐园开工位
#20 9 * * * node /scripts/ling_jd_joypark_open.js >> /scripts/logs/ling_jd_joypark_open.log 2>&1
# 汪汪乐园每日任务
#0 0,7,9,17,20 * * * node /scripts/zero_jd_joy_park_task.js >> /scripts/logs/zero_jd_joy_park_task.log 2>&1
# 点点券
20 0,20 * * * node /scripts/ling_jd_necklace.js >> /scripts/logs/ling_jd_necklace.log 2>&1
# 热血心跳,狂解压
0 9 * * * node /scripts/zero_jd_decompression.js >> /scripts/logs/zero_jd_decompression.log 2>&1
# 特务
#23 8,9 * * *  node /scripts/zero_jd_superBrand.js >> /scripts/logs/zero_jd_superBrand.log 2>&1
# 特务Z
18 8,9 * * *  node /scripts/ling_jd_productZ4Brand.js >> /scripts/logs/ling_jd_productZ4Brand.log 2>&1
# 积分换话费
33 7,19 * * *  node /scripts/zero_jd_dwapp.js >> /scripts/logs/zero_jd_dwapp.log 2>&1
# 签到领现金
2 0-23/4 * * * node /scripts/zero_jd_cash.js >> /scripts/logs/zero_jd_cash.log 2>&1
# 粉丝互动
34 5,18 * * *  node /scripts/zero_jd_fan.js >> /scripts/logs/zero_jd_fan.log 2>&1
# 美丽研究院
#1 7,12,19 * * *  node /scripts/zero_jd_beauty.js >> /scripts/logs/zero_jd_beauty.log 2>&1
# 荣耀换新
#20 8 * * * node /scripts/ling_jd_ryhx.js >> /scripts/logs/ling_jd_ryhx.log 2>&1
# 荣耀新品传送挑战
0 9 * * * node /scripts/star_jd_honour.js >> /scripts/logs/star_jd_honour.log 2>&1
# 获取互助码
20 13 * * 6 node /scripts/jd_get_share_code.js >> /scripts/logs/jd_get_share_code.log 2>&1
# 赚京豆
#10 0,7,23 * * * node /scripts/zero_jd_syj.js >> /scripts/logs/zero_jd_syj.log 2>&1
# 进店领豆
 0 0 * * node /scripts/zero_jd_shop.js >> /scripts/logs/zero_jd_shop.log 2>&1
# 送豆得豆
45 1,12 * * * node /scripts/zero_jd_sddd.js >> /scripts/logs/zero_jd_sddd.log 2>&1
# 金榜创造营
13 1,22 * * * node /scripts/zero_jd_gold_creator.js >> /scripts/logs/zero_jd_gold_creator.log 2>&1
# 金融养猪
12 0-23/6 * * * node /scripts/zero_jd_pigPet.js >> /scripts/logs/zero_jd_pigPet.log 2>&1
# 闪购盲盒
20 8 * * * node /scripts/zero_jd_sgmh.js >> /scripts/logs/zero_jd_sgmh.log 2>&1
# 集魔方
31 2,8 * * * node /scripts/ling_jd_mofang.js >> /scripts/logs/ling_jd_mofang.log 2>&1
# 零食街
0 9 * * * node /scripts/aaro_jd_foodRunning.js >> /scripts/logs/aaro_jd_foodRunning.log 2>&1
# 领京豆额外奖励
10 7 * * * node /scripts/zero_jd_bean_home.js >> /scripts/logs/zero_jd_bean_home.log 2>&1
# 领券中心签到
15 0 * * * node /scripts/zero_jd_ccSign.js >> /scripts/logs/zero_jd_ccSign.log 2>&1
# 领金贴
10 0 * * * node /scripts/zero_jd_jin_tie.js >> /scripts/logs/zero_jd_jin_tie.log 2>&1
# 女装盲盒
35 8,12 * * * node /scripts/zero_jd_nzmh.js >> /scripts/logs/zero_jd_nzmh.log 2>&1
# 京东萌宠
15 6-18/6 * * * node /scripts/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1
# 清空购物车
57 23 * * * node /scripts/ling_jd_cleancart.js >> /scripts/logs/ling_jd_cleancart.log 2>&1
# 芥么赚豪礼
37 0,11 * * *  node /scripts/zero_jd_genz.js >> /scripts/logs/zero_jd_genz.log 2>&1
# 芥么签到
11 0,9 * * *  node /scripts/zero_jd_zsign.js >> /scripts/logs/zero_jd_zsign.log 2>&1
# 海尔京东超级品牌日
10 15 9-15 10 *  node /scripts/star_jd_haier.js >> /scripts/logs/star_jd_haier.log 2>&1
# 一加
10 14 * 10,11 *  node /scripts/star_jd_yijia.js >> /scripts/logs/star_jd_yijia.log 2>&1
# 京东工业品
13 5,16 * 10,11 *  node /scripts/zero_jd_industrial_task.js >> /scripts/logs/zero_jd_industrial_task.log 2>&1
# 幸运扭蛋
0 9 * 10,11 * node /scripts/zero_jd_lucky_egg.js >> /scripts/logs/zero_jd_lucky_egg.log 2>&1
# 攒金币 赢大礼
22 0,8 15-28 10 * node /scripts/zero_jd_GoldcoinToGift.js >> /scripts/logs/zero_jd_GoldcoinToGift.log 2>&1
# 宠汪汪积分兑换有就换版
59 7,15,23 * * * node /scripts/ling_jd_joy_reward_Mod.js >> /scripts/logs/ling_jd_joy_reward_Mod.log 2>&1
# 城城领现金
0 0-23/5,22 * 10 * node /scripts/gua_city.js >> /scripts/logs/gua_city.log 2>&1
# 环游记
0 9 * * * node /scripts/zero_jd_hyj.js >> /scripts/logs/zero_jd_hyj.log 2>&1
# 惊喜大作战
0 9 * * * node /scripts/zero_jd_jxdzz.js >> /scripts/logs/zero_jd_jxdzz.log 2>&1
4 10,16,21 * * * node /scripts/zero_jd_jxlhb.js >> /scripts/logs/zero_jd_jxlhb.log 2>&1
# 选品官
23 9,10 * * *  node /scripts/zero_jd_selectionOfficer.js >> /scripts/logs/zero_jd_selectionOfficer.log 2>&1
# 限时抢京豆
23 7,9 * * *  node /scripts/zero_jd_xsqjd.js >> /scripts/logs/zero_jd_xsqjd.log 2>&1
# 预售福利机
5 0,2 * * * node /scripts/zero_jd_ys.js >> /scripts/logs/zero_jd_ys.log 2>&1
