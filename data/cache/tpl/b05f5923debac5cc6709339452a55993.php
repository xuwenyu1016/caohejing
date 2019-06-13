<?php exit;?>001591696877fb3c892de59facf28dc7642dbbd47d98s:8850:"a:2:{s:8:"template";s:8786:"<?php $__Template->display("themes/mobile/header"); ?>

<div class="index-slider">
    <div data-am-widget="slider" class="am-slider am-slider-b1" data-am-slider='{"controlNav":false}'>
        <ul class="am-slides">
            <li><a href="/page-pinpaijieshao.html"><img src="/public/lib/images/mobile/1.png" class="am-img-responsive am-center" /></a></li>
            <!--<li><a href="/page-guanyuwomen.html"><img src="/public/lib/images/mobile/1.png" class="am-img-responsive am-center" /></a></li>-->
        </ul>
    </div>
</div>

<div class="index-info am-padding-sm">
    <div class="title-box">
        <h5>新闻资讯</h5>
        <p>NEWS AND INFORMATION</p>
    </div>

    <ul class="am-avg-sm-2 news-columns am-margin-top-sm">
        <?php $listList = service("article","Label","contentList",array( "app"=>"Article", "label"=>"contentList", "class_id"=>1, "sub"=>true, "limit"=>4));  if(is_array($listList)) foreach($listList as $list){ ?>
        <li>
            <article>
                <a href="<?php echo $list["aurl"];?>">
                    <div>
                        <img src="<?php echo $list["image"];?>" class="am-img-responsive am-center" alt="<?php echo $list["title"];?>" />
                    </div>

                    <div class="am-padding-horizontal-xs">
                        <p class="am-text-truncate"><?php echo $list["title"];?></p>
                        <p class="time"><img src="/public/lib/images/pc/34.png" alt="time" /><time pubdate datetime="<?php echo date('Y-m-d',$list['time']);?>"><?php echo date('Y-m-d',$list['time']);?></time></p>
                        <p><?php echo $list["description"];?></p>
                        <span>更多</span>
                    </div>
                </a>
            </article>
        </li>
        <?php } ?>
    </ul>
</div>

<section class="collaboration am-padding-sm">

    <div class="title-box">
        <h5>合作服务</h5>
        <p>COLLABORATION SERVICE</p>
    </div>

    <div class="am-tabs" data-am-tabs>
        <ul class="am-tabs-nav am-nav am-nav-tabs am-avg-sm-4">
            <li class="am-active"><a href="#tab-4-1">品牌运营</a></li>
            <li><a href="#tab-4-2">品牌顾问</a></li>
            <li><a href="#tab-4-3">载体运营</a></li>
            <li><a href="#tab-4-4">顾问咨询</a></li>
        </ul>
        <div class="am-tabs-bd am-tabs-bd-ofv">
            <div class="am-tab-panel am-active" id="tab-4-1">
                <article>
                    <div class="article-container">
                        <div>
                            <a href="/list-dianxinganli.html">
                                <p>品牌运营</p>
                                <p>植入漕河泾创营品牌，并且帮助合作方进行运营管理。</p>
                                <span>了解更多 >></span>
                            </a>
                        </div>
                        <!--<div>-->
                            <!--<a href="">-->
                                <!--<p>品牌运营</p>-->
                                <!--<p>以创新驿站和知识产品集数中心为载体，全面延伸科技价值链。促进技术转移。建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目......</p>-->
                                <!--<span>了解更多 >></span>-->
                            <!--</a>-->
                        <!--</div>-->
                    </div>
                </article>
            </div>
            <div class="am-tab-panel" id="tab-4-2">
                <article>
                    <div class="article-container">
                        <div>
                            <a href="/list-dianxinganli.html">
                                <p>品牌顾问</p>
                                <p>植入漕河泾创营品牌，并且为合作方提供顾问咨询服务，协助合作方的团队更好的进行运营管理。</p>
                                <span>了解更多 >></span>
                            </a>
                        </div>
                        <!--<div>-->
                            <!--<a href="">-->
                                <!--<p>品牌顾问</p>-->
                                <!--<p>以创新驿站和知识产品集数中心为载体，全面延伸科技价值链。促进技术转移。建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目......</p>-->
                                <!--<span>了解更多 >></span>-->
                            <!--</a>-->
                        <!--</div>-->
                    </div>
                </article>
            </div>
            <div class="am-tab-panel" id="tab-4-3">
                <article>
                    <div class="article-container">
                        <div>
                            <a href="/list-dianxinganli.html">
                                <p>载体运营</p>
                                <p>帮助合作方进行载体运营管理。</p>
                                <span>了解更多 >></span>
                            </a>
                        </div>
                        <!--<div>-->
                            <!--<a href="">-->
                                <!--<p>载体运营</p>-->
                                <!--<p>以创新驿站和知识产品集数中心为载体，全面延伸科技价值链。促进技术转移。建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目......</p>-->
                                <!--<span>了解更多 >></span>-->
                            <!--</a>-->
                        <!--</div>-->
                    </div>
                </article>
            </div>
            <div class="am-tab-panel" id="tab-4-4">
                <article>
                    <div class="article-container">
                        <div>
                            <a href="/list-dianxinganli.html">
                                <p>顾问咨询</p>
                                <p>为合作方提供顾问咨询服务。</p>
                                <span>了解更多 >></span>
                            </a>
                        </div>
                        <!--<div>-->
                            <!--<a href="">-->
                                <!--<p>顾问咨询</p>-->
                                <!--<p>以创新驿站和知识产品集数中心为载体，全面延伸科技价值链。促进技术转移。建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目建立数千个项目......</p>-->
                                <!--<span>了解更多 >></span>-->
                            <!--</a>-->
                        <!--</div>-->
                    </div>
                </article>
            </div>
        </div>
    </div>

</section>

<div class="index-cases am-padding-sm">
    <div class="title-box">
        <h5>经典案例</h5>
        <p>CLASSIC CASE</p>
    </div>

    <ul class="am-avg-sm-2 am-padding-top-sm">
        <?php $listList = service("article","Label","contentList",array( "app"=>"Article", "label"=>"contentList", "expand_id"=>4, "class_id"=>2, "sub"=>true, "limit"=>5));  if(is_array($listList)) foreach($listList as $list){ ?>
        <li>
            <a href="<?php echo $list["aurl"];?>">
                <section style="background-image: url('<?php echo $list["image"];?>');">
                    <article>
                        <div>
                            <img src="<?php echo $list["logo"];?>" class="am-img-responsive am-center" alt="<?php echo $list["title"];?>" />
                            <p class="am-text-center am-margin-vertical-xs am-text-truncate"><?php echo $list["title"];?></p>
                        </div>

                        <p class="index-case-description"><?php echo $list["description"];?></p>
                        <p class="index-case-more">了解更多 >></p>
                    </article>
                </section>
                <p class="bottom-title am-text-truncate"><?php echo $list["title"];?></p>
            </a>
        </li>
        <?php } ?>
    </ul>

    <a class="am-margin-top-xs" href="/list-dianxinganli.html">查看更多经典案例&emsp;>></a>
</div>

<?php $__Template->display("themes/mobile/footer"); ?>";s:12:"compile_time";i:1560160877;}";