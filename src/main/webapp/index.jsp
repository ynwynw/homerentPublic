<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/30
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    <title>恋家短租</title>
    <meta name="keywords"/>
    <meta name="description"/>


    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.bundle.css">
    <style>
        .city-selection .city-cur1 {
            color: #fff;
            font-size: 12px;
        }
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.bundle.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset-chatBox.css">

</head>
<body>

<div class="page-wrap">

    <div class="page-main" id="page-main">
        <div class="uoko-nav">
            <div class="container clearfix">
                <div class="uoko-navbar-left">
                    <a href="${pageContext.request.contextPath}/main/toIndex" class="site-logo"><img
                            src="${pageContext.request.contextPath}/img/logo.png" width="218" height="36"></a>
                    <div class="city-selection">
                        <input type="hidden" value="278" id="curr-city-id"/>
                        <%--<input type="hidden" value="萍乡" id="curr-city-name"/>--%>
                        <input type="hidden" value="30.679943" id="curr-city-latitude"/>
                        <input type="hidden" value="104.067923" id="curr-city-longitude"/>

                        <a href="javascript:;" data-target="#city-list" class="city-cur1 js-drop-down">北京</a>

                    </div>


                </div>
                <div class="uoko-navbar">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/main/toIndex">首页</a></li>
                        <li><a href="${pageContext.request.contextPath}/rentout/findRentOut">我要租房</a></li>
                        <li><a href="${pageContext.request.contextPath}/main/toShowQuestions">租前须知</a></li>

                        <li><a href="${pageContext.request.contextPath}/rentget/findRentget">求租列表</a></li>
                        <li><a href="${pageContext.request.contextPath}/main/toShowAsFor">关于恋家</a></li>
                        <li>
                            <a href="${pageContext.request.contextPath}/main/toShowHT">
                                <span>我的合同</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="uoko-navbar-right login-box">
                    <c:if test="${empty user}">
                        <a href="${pageContext.request.contextPath}/main/toShowLogin"
                           target="_blank">登录</a><span>|</span><a
                            href="${pageContext.request.contextPath}/main/toShowReg" target="_blank">注册</a>
                    </c:if>
                    <c:if test="${not empty user}">
                        <span><a style="color: #0fa39f"
                                 href="${pageContext.request.contextPath}/main/toShowUserCenter">${user.name}</a>,你好！ |  <a>退出</a></span>
                    </c:if>

                </div>
            </div>
        </div>
        <div class="banner-slider js-banner-slider">
            <ul class="slider-list">
                <li style="background-color:rgb(63, 203, 192)" class="item" data-banner-id="287">
                    <a href="${pageContext.request.contextPath}/rentout/findRentOut" target="_blank">
                        <img src="/Content/img/loading-jd.gif"
                             data-original="${pageContext.request.contextPath}/img/PR.2.jpg" width="1170" height="300">
                    </a>
                </li>

            </ul>
        </div>

        <div class="search-box">
            <div class="container">
                <div class="search-tool">
                    <form action="#">
                        <input type="search" placeholder="请输入区域、商圈或小区名" class="search-ipt" name="keywords"
                               id="search-ipt">
                        <%--<input type="submit" value="搜索" class="icon-search-btn search-btn js-search-btn"--%>
                               <%--data-target="#search-ipt">--%>
                        <input  value="搜索" class="icon-search-btn search-btn js-search-btn"
                               data-target="#search-ipt">
                    </form>
                </div>
                <a href="#" class="sprites icon-map search-by-map"><span class="text-hidden">地图找房</span></a>
                <div class="hot-area">
                    <span><b>热门区域：</b></span>
                </div>
            </div>
        </div>
        <div class="res-selected">
            <div class="res-selected-inner">
                <div class="res-selected-tab">
                    <h2 class="tit tab-btn">今日精选房源</h2>
                    <a href="" class="tab-btn">
                        <h2 class="tit">特惠房源</h2><span class="sale-tag"></span>
                    </a>
                </div>
                <ul class="gallery">

                    <li class="gallery-item">
                        <div class="item-img">
                            <a href="" target="_blank"><img src="img/F1.jpg" width="318" height="212"></a>
                        </div>
                        <div class="item-desc">
                            <span class="item-tag item-tag-standard"></span>
                            <div class="item-text">为恋家统一标准化装修，多属房龄较短的电梯公寓，在裸房基础上完成精装全配。</div>
                            <a href="/room/7b5b6cef4c024dbf93e1da6818f07004" target="_blank"
                               title="华阳欧尚旁 天府四街五街附近 公交直达世纪城 软件园新希望华银美行中心嘉美地 " class="item-tit">天府新区 华阳 华阳欧尚旁 天府四街五街附近
                                公交直达世纪城 软件园新希望华银美行中心嘉美地</a>
                        </div>
                        <div class="item-info">
                            <div class="item-loc"><i class="sprites icon-loc"></i>戛纳湾滨江</div>
                            <div class="item-price"><span><sub>￥</sub>580</span>元/月</div>
                        </div>
                    </li>
                    <li class="gallery-item">
                        <div class="item-img">
                            <a href="" target="_blank"><img src="img/F1.jpg"
                                                            data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2015-09-08/62d26f99-a34d-4e32-83ad-ec4609477f11.jpg?imageView2/1/w/318/h/212"
                                                            width="318" height="212"></a>
                        </div>
                        <div class="item-desc">
                            <span class="item-tag item-tag-standard"></span>
                            <div class="item-text">为恋家统一标准化装修，多属房龄较短的电梯公寓，在裸房基础上完成精装全配。</div>
                            <a href="/room/f29e21f648c042698f4deadc6c3705a6" target="_blank"
                               title="公交车直达软件园 华府大道 非中介精装套四单间 " class="item-tit">高新区 华府 公交车直达软件园 华府大道 非中介精装套四单间</a>
                        </div>
                        <div class="item-info">
                            <div class="item-loc"><i class="sprites icon-loc"></i>光明城市</div>
                            <div class="item-price"><span><sub>￥</sub>705</span>元/月</div>
                        </div>
                    </li>
                    <li class="gallery-item">
                        <div class="item-img">
                            <a href="" target="_blank"><img src="img/F1.jpg"
                                                            data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2016-12-02/b23dafab-6286-41df-9102-f39f0cfc8f30.jpg?imageView2/1/w/318/h/212"
                                                            width="318" height="212"></a>
                        </div>
                        <div class="item-desc">
                            <span class="item-tag item-tag-standard"></span>
                            <div class="item-text">为恋家统一标准化装修，多属房龄较短的电梯公寓，在裸房基础上完成精装全配。</div>
                            <a href="/room/c625598d5f054d579480500f356f9297" target="_blank"
                               title="羊犀立交内侧 步行直达2号线羊犀立交站、茶店子站 可直达市中心 " class="item-tit">金牛区 茶店子 羊犀立交内侧
                                步行直达2号线羊犀立交站、茶店子站 可直达市中心</a>
                        </div>
                        <div class="item-info">
                            <div class="item-loc"><i class="sprites icon-loc"></i>新雨香沁</div>
                            <div class="item-price"><span><sub>￥</sub>700</span>元/月</div>
                        </div>
                    </li>
                    <li class="gallery-item">
                        <div class="item-img">
                            <a href="" target="_blank"><img src="img/F2.jpg"
                                                            data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2014-05-19/382b11d6-1cf3-4246-8165-046d184a81a5.jpg?imageView2/1/w/318/h/212"
                                                            width="318" height="212"></a>
                        </div>
                        <div class="item-desc">
                            <span class="item-tag item-tag-deposit"></span>
                            <div class="item-text">为纯房东托管，恋家未进行装修改造。同样由恋家提供出租、管理并享受租后服务。</div>
                            <a href="/room/afd92c3a04f242c59e81a98f6343996e" target="_blank"
                               title="二环快速公交BRT 东郊记忆附近 非中介精装套三 " class="item-tit">成华区 杉板桥 二环快速公交BRT 东郊记忆附近 非中介精装套三</a>
                        </div>
                        <div class="item-info">
                            <div class="item-loc"><i class="sprites icon-loc"></i>锦绣东方2期</div>
                            <div class="item-price"><span><sub>￥</sub>750</span>元/月</div>
                        </div>
                    </li>
                    <li class="gallery-item">
                        <div class="item-img">
                            <a href="" target="_blank"><img src="img/F2.jpg"
                                                            data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2016-01-25/a3edbea5-49c5-4a96-85a6-da2a87d6cb23.jpg?imageView2/1/w/318/h/212"
                                                            width="318" height="212"></a>
                        </div>
                        <div class="item-desc">
                            <span class="item-tag item-tag-standard"></span>
                            <div class="item-text">为恋家统一标准化装修，多属房龄较短的电梯公寓，在裸房基础上完成精装全配。</div>
                            <a href="/room/d55d0fc500d8473284d75d52e5cf58ac" target="_blank"
                               title="西部智谷 力德时代 汇点 慧谷 大悦城上班首选 公交直达红牌楼 春熙路 精装合租 出门就是公交站 交通便利 " class="item-tit">武侯区 新双楠
                                西部智谷 力德时代 汇点 慧谷 大悦城上班首选 公交直达红牌楼 春熙路 精装合租 出门就是公交站 交通便利</a>
                        </div>
                        <div class="item-info">
                            <div class="item-loc"><i class="sprites icon-loc"></i>中筑西府兰庭</div>
                            <div class="item-price"><span><sub>￥</sub>600~920</span>元/月</div>
                        </div>
                    </li>
                    <li class="gallery-item">
                        <div class="item-img">
                            <a href="" target="_blank"><img src="img/F2.jpg"
                                                            data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2015-07-23/f31c2835-c660-452a-b19d-de6e584518bb.jpg?imageView2/1/w/318/h/212"
                                                            width="318" height="212"></a>
                        </div>
                        <div class="item-desc">
                            <span class="item-tag item-tag-standard"></span>
                            <div class="item-text">为恋家统一标准化装修，多属房龄较短的电梯公寓，在裸房基础上完成精装全配。</div>
                            <a href="/room/1ea3b8824f894ed490812c0fb43c778c" target="_blank"
                               title="4号线清江西路地铁口附近丨公交直达金沙车站 贝森路 西单商场上班首选 精装单间合租 非中介 " class="item-tit">青羊区 内光华
                                4号线清江西路地铁口附近丨公交直达金沙车站 贝森路 西单商场上班首选 精装单间合租 非中介</a>
                        </div>
                        <div class="item-info">
                            <div class="item-loc"><i class="sprites icon-loc"></i>蓝光coco蜜城</div>
                            <div class="item-price"><span><sub>￥</sub>685~980</span>元/月</div>
                        </div>
                    </li>
                    <li class="gallery-item">
                        <div class="item-img">
                            <a href="" target="_blank"><img src="img/loading.gif"
                                                            data-original="https://image.uoko.com/Room.1A3A0786.jpg?imageView2/1/w/318/h/212"
                                                            width="318" height="212"></a>
                        </div>
                        <div class="item-desc">
                            <span class="item-tag item-tag-remake"></span>
                            <div class="item-text">为半标准优化装修，利用原房配置条件，在原装修基础上进行美化改造，房龄相对更长，多集中在成熟社区。</div>
                            <a href="/room/e4ec98e995414e4899dc2e2f6d3822c0" target="_blank"
                               title="可月付！通气套一标间！欢乐颂 保利心语旁边！软件园！银泰城！ " class="item-tit">高新区 大源 可月付！通气套一标间！欢乐颂
                                保利心语旁边！软件园！银泰城！</a>
                        </div>
                        <div class="item-info">
                            <div class="item-loc"><i class="sprites icon-loc"></i>大源欢乐颂</div>
                            <div class="item-price"><span><sub>￥</sub>1900</span>元/月</div>
                        </div>
                    </li>
                    <li class="gallery-item">
                        <div class="item-img">
                            <a href="" target="_blank"><img src="img/loading.gif"
                                                            data-original="https://image.uoko.com/Room.8722ED01.jpg?imageView2/1/w/318/h/212"
                                                            width="318" height="212"></a>
                        </div>
                        <div class="item-desc">
                            <span class="item-tag item-tag-remake"></span>
                            <div class="item-text">为半标准优化装修，利用原房配置条件，在原装修基础上进行美化改造，房龄相对更长，多集中在成熟社区。</div>
                            <a href="/room/36e64962c7b84be1b3e0ff534032c596" target="_blank"
                               title="标间套一！空调独卫通通有！香悦城 益州大道 生态苑 软件园 " class="item-tit">高新区 软件园 标间套一！空调独卫通通有！香悦城 益州大道 生态苑
                                软件园</a>
                        </div>
                        <div class="item-info">
                            <div class="item-loc"><i class="sprites icon-loc"></i>乐家香月湖</div>
                            <div class="item-price"><span><sub>￥</sub>2000</span>元/月</div>
                        </div>
                    </li>
                    <li class="gallery-item">
                        <div class="item-img">
                            <a href="" target="_blank"><img src="img/loading.gif"
                                                            data-original="//image-etadmin-pub.uoko.com/images/room-lease-picture/2016-11-30/cbd4c60d-57bc-47e8-b96a-510b9d2b563a.jpg?imageView2/1/w/318/h/212"
                                                            width="318" height="212"></a>
                        </div>
                        <div class="item-desc">
                            <span class="item-tag item-tag-remake"></span>
                            <div class="item-text">为半标准优化装修，利用原房配置条件，在原装修基础上进行美化改造，房龄相对更长，多集中在成熟社区。</div>
                            <a href="/room/a28bf8d3856f4232acca95da5d74a5cf" target="_blank"
                               title="苏坡公园旁 依靠西南财经大学 环境舒适 交通方便 配套齐全 无中介费 " class="item-tit">武侯区 外双楠 苏坡公园旁 依靠西南财经大学 环境舒适
                                交通方便 配套齐全 无中介费</a>
                        </div>
                        <div class="item-info">
                            <div class="item-loc"><i class="sprites icon-loc"></i>翠堤春晓</div>
                            <div class="item-price"><span><sub>￥</sub>890</span>元/月</div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div class="reason">
            <h2 class="reson-tit"><span class="text-hidden">选择恋家的理由 top5</span></h2>
            <ul class="reason-list">
                <li>
                    <i class="sprites reason-price"></i>
                    <h4>无中介费</h4>
                    <p>网上看房 拎包入住</p>
                </li>
                <li>
                    <i class="sprites reason-young"></i>
                    <h4>年轻人</h4>
                    <p>我们追求 生活品质</p>
                </li>
                <li>
                    <i class="sprites reason-real"></i>
                    <h4>真实房源</h4>
                    <p>凭证齐全 一房一价</p>
                </li>
                <li>
                    <i class="sprites reason-wifi"></i>
                    <h4>无线wifi</h4>
                    <p>光纤网络 基情LOL</p>
                </li>
                <li>
                    <i class="sprites reason-service"></i>
                    <h4>维修保洁</h4>
                    <p>提供各类管理服务</p>
                </li>
            </ul>
        </div>
        <div class="adv">
            <div class="adv-inner">
                <div class="adv-item">
                </div>
                <div class="adv-item">
                </div>
                <div class="adv-item">
                    <a href="javascript:;" id="video-wrap" data-video-type="mp4"
                       data-src="http://video.uoko.com/uoko_joinus_2016.mp4" data-video-width="525"
                       data-video-height="330">
                        <img src="${pageContext.request.contextPath}/img/w2w.jpg"
                             data-original="../img/vedio_poster.jpg" width="525" height="330">
                    </a>

                </div>
                <div class="adv-item">
                    <a href="javascript:;" tar target="_blank">
                        <img src="${pageContext.request.contextPath}/img/w3w.jpg"
                             data-original="https://image-old.uoko.com/Upload/ShareImages/2014-12-31/2a5af010-dc19-49ed-931d-9f01e671b55a.jpg"
                             wid width="525" height="330" alt="恋家短租">
                    </a>
                </div>
            </div>
        </div>
        <div class="instr">
            <ul class="instr-list">
                <li class="sprites instr-quanlity">
                    <h4 class="text-hidden">品质</h4>
                    <p class="text-hidden">时尚装修 品牌家电 wifi覆盖</p>
                </li>
                <li class="sprites instr-secure">
                    <h4 class="text-hidden">安全</h4>
                    <p class="text-hidden">租客认证 品质小区 一客一锁</p>
                </li>
                <li class="sprites instr-serve">
                    <h4 class="text-hidden">服务</h4>
                    <p class="text-hidden">定期保洁 月付租金 及时维修</p>
                </li>
                <li class="sprites instr-prom">
                    <h4 class="text-hidden">承诺</h4>
                    <p class="text-hidden">100%真实房源 通俗公示 一房一价</p>
                </li>
            </ul>
        </div>

    </div>

    <script type="text/javascript">
        window._bd_share_config = {
            common: {
                "bdSnsKey": {}, "bdText": "", "bdMini": "2", "bdMiniList": !1, "bdPic": "",
                "bdStyle": "0", "bdSize": "16", bdMini: 2, bdPopupOffsetLeft: -207
            },
            share: [{"bdSize": 16}]
        }
        with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = '../js/share.js'];

    </script>
    <div class="side-fix">
        <ul>
            <li class="side-share-box">
                <a href="javascript:void(0);" class="sprites side-share"></a>
                <div class="side-desc">
                    <div class="bdsharebuttonbox">
                        <a title="分享到新浪微博" href="#" class="bds_tsina" data-cmd="tsina"></a>
                        <a title="分享到QQ好友" href="#" class="bds_sqq" data-cmd="sqq"></a>
                        <a title="分享到豆瓣网" href="#" class="bds_douban" data-cmd="douban"></a>
                        <a title="分享到人人网" href="#" class="bds_renren" data-cmd="renren"></a>
                        <a title="分享到QQ空间" href="#" class="bds_qzone" data-cmd="qzone"></a>
                        <a title="分享到微信" href="#" class="bds_weixin" data-cmd="weixin"></a>
                    </div>
                </div>
            </li>

            <li>
                <a href="/aboutus/contact?op=2#contact_mess_anchor" target="_blank" class="sprites side-comment"></a>
                <div class="side-desc">留言建议</div>
            </li>
            <li class="side-weixin-box">
                <a href="javascript:void(0);" class="sprites side-weixin"></a>
                <div class="side-desc">
                    <img src="img/loading.gif" width="131" height="131" alt="微信找房，扫我吧">
                    <p><b>微信找房</b>，扫我吧!</p>
                </div>
            </li>
            <li id="back-top" class="back-top"><a href="javascript:void(0);" class="sprites side-top"></a></li>
        </ul>

    </div>


    <div class="customer-service" id="customer-service">
        <a class="bar-link" onclick="NTKF.im_openInPageChat('kf_9452_1480658837072')" target="_blank" rel="nofollow">
            <img src="${pageContext.request.contextPath}/img/serv.gif" id="customer-service-img"/>
            <img src="${pageContext.request.contextPath}/img/serv_hover.gif" style="display:none"/>
        </a>
    </div>


    <footer class="footer" id="page-footer">

        <div class="container clearfix">
            <div class="footer-slogan"><img src="${pageContext.request.contextPath}/img/footer-setup2.png" width="483"
                                            height="70"></div>
            <div class="social"><a href="${pageContext.request.contextPath}/main/toShowPushMessage"><i
                    class="sprites icon-social-msg"></i>投诉及公示</a></div>
            <div class="qr-code">
                <div class="qr-code-box"><img src="${pageContext.request.contextPath}/img/erweima.png" width="137"
                                              height="114" alt="下载恋家APP"></div>
                <div class="qr-code-box"><img src="${pageContext.request.contextPath}/img/erweima.png" width="137"
                                              height="114" alt="关注恋家公众号"></div>
            </div>
            <div class="clearfix"></div>
            <div class="ext-links">


            </div>
        </div>
    </footer>
    <style>
        .bottom {
            height: 80px;
        }

        .text-center {
            text-align: center;
        }

        .icon-ga {
            background: url(${pageContext.request.contextPath}/img/public_security.png) no-repeat center;
            width: 20px;
            height: 20px;
            display: inline-block;
            vertical-align: text-bottom;
        }

        .beian-info {
            line-height: 20px;
        }
    </style>
    <div class="bottom" id="page-bottom">
        <div class="container clearfix">

            <div class="site-info">Copyright © 2012-2018 lianjia.com. All Rights 经营许可证号川***-*****<a href=""
                                                                                                    target="_blank"
                                                                                                    rel="nofollow">蜀ICP备****号-1</a>
            </div>

            <ul class="bottom-nav">
                <li><a href="${pageContext.request.contextPath}/main/toIndex" target="_blank">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/main/toShowQuestions">给你的信</a></li>

                <li><a href="${pageContext.request.contextPath}/main/toShowAsFor">关于恋家</a></li>


                <li><a href="${pageContext.request.contextPath}/main/toShowPushMessage">联系恋家</a></li>
            </ul>
        </div>
        <div class="container clearfix text-center beian-info">
            <i class="icon-ga"></i>
            <span>川公网安备 ******2001885号</span>

        </div>
    </div>


</div>


<script src="${pageContext.request.contextPath}/js/common.bundle.js"></script>
<!--统计代码-->
<script src="${pageContext.request.contextPath}/js/g.js"></script>
<script>


    NTKF_PARAM = {
        siteid: "kf_9452",
        settingid: "kf_9452_1480658837072",
        uid: "",
        uname: "",
        isvip: "0",
        userlevel: "0",
        itemid: "",
        erpparam: ""
    }

    $(function () {
        //页脚沉降
        var $bottom = $('#page-bottom');
        var $footer = $('#page-footer');
        var $main = $('#page-main');

        var h = $bottom.outerHeight() + $footer.outerHeight();
        $main.css({
            paddingBottom: h,
            marginBottom: -h
        });


        //在线客服切换效果

        $('#customer-service').hover(function () {
            $('#customer-service-img').attr('src', '${pageContext.request.contextPath}/img/serv_hover.gif');

        }, function () {

            $('#customer-service-img').attr('src', '${pageContext.request.contextPath}/img/serv.gif');
        });

        //nav高亮
        var pathname = window.location.pathname
        var $navBar = $('.uoko-navbar li')
        switch (true) {
            case pathname == '/':
                $navBar.eq(0).addClass('active')
                break;
            case pathname.indexOf('/questions') > -1:
                $navBar.eq(2).addClass('active')
                break;
            case pathname.indexOf('/room') > -1:
                $navBar.eq(1).addClass('active')
                break;
            case pathname.indexOf('/history') > -1:
                $navBar.eq(5).addClass('active')
                break;
        }
    });


    // cookie
    var Cookie = function (name, value, options) {
        if (typeof value != 'undefined') {
            options = options || {};
            if (value === null) {
                options.expires = -1;
            }
            var expires = '';
            if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
                var date;
                if (typeof options.expires == 'number') {
                    date = new Date();
                    date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
                } else {
                    date = options.expires;
                }
                expires = '; expires=' + date.toUTCString();
            }
            //var path = options.path ? '; path=' + options.path : '',
            var path = '; path=/',
                domain = options.domain ? '; domain=' + options.domain : '',
                secure = options.secure ? '; secure' : '';

            document.cookie = [name, '=', value, expires, path, domain, secure].join('');
        } else {
            var nameEQ = name + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1, c.length);
                }
                if (c.indexOf(nameEQ) == 0) {
                    return decodeURIComponent(c.substring(nameEQ.length, c.length));
                }
            }
            return false;
        }
    };

    ;(function ($, undefined) {

        function isArray(o) {
            return Object.prototype.toString.call(o) === '[object Array]';
        }

        //解析查询字符串方法 spliter可选默认 &,sparator可选默认 =;

        //传入 'foo=1&bar=2&foo=3'将返回对象 { foo:[1,3], bar:2 }

        function parseQuery(queryString, spliter, separator) {
            var ret = {};
            spliter = spliter || '&';
            separator = separator || '=';

            if (queryString === '' || queryString === undefined) {
                return ret;
            }

            var paramArr = queryString.split(spliter);

            for (var i = 0; paramArr[i]; i++) {
                var pairs = paramArr[i].split(separator);
                var key = pairs[0];
                var val = pairs[1];

                if (ret[key] === undefined) {
                    ret[key] = val;
                    continue;
                }
                if (!isArray(ret[key])) {
                    ret[key] = [ret[key]].concat(val);
                    continue;
                }

                ret[key].push(val);

            }
            ;

            return ret;

        }

        $.parseQuery = parseQuery;

    })(window.jQuery)

    function isEmptyVal(val) {
        return val === undefined || val === '' || val === null;
    }

    //设置页面cookie
    function setUtmCookie(key) {
        var _utm = Cookie(key);
        var queryString = $.parseQuery(window.location.search.slice(1));
        var cookieVal = [];
        var nameTransfers = {};
        if (_utm !== false && _utm !== '') {
            return;
        }
        var sourceType = !isEmptyVal(queryString['hmsr']) ?
            'hmsr' : !isEmptyVal(queryString['utm_source']) ?
                'utm_source' : undefined;

        if (!sourceType) {
            return;
        }

        if (sourceType === 'hmsr') {//若sourceType是hmsr，替换循环参数
            nameTransfers = {
                'utm_source': 'hmsr',
                'utm_medium': 'hmpl',
                'utm_term': 'hmkw',
                'utm_campaign': 'hmcu',
                'utm_content': 'hmci'
            }
        }

        $.each(setUtmCookie.cookieMap, function (index, key) {
            var queryKey = nameTransfers[key] || key;
            queryString[queryKey] && cookieVal.push(key + '=' + queryString[queryKey]);
        });

        if (!cookieVal.length) {//防止写入空值
            return;
        }
        cookieVal = cookieVal.join('&');
        return Cookie(key, cookieVal, setUtmCookie.cookieOption);
    }

    //配置
    setUtmCookie.cookieMap = ['utm_source', 'utm_medium', 'utm_campaign', 'utm_term', 'utm_content'];
    setUtmCookie.cookieOption = {
        expires: 15,
        path: '/',
        domain: '.uoko.com'
    }

    setUtmCookie('_utm');

</script>


<script src="${pageContext.request.contextPath}/js/index.bundle.js"></script>


<script type="text/javascript" src="${pageContext.request.contextPath}/js/ntkfstat.js" charset="utf-8"></script>
</body>
</html>
