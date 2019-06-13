<?php exit;?>001589257021e29aa39093c1163692240f6720319fc3s:2999:"a:2:{s:8:"template";s:2935:"<?php $__Template->display("themes/default/header"); ?>

<img src="/public/lib/images/pc/23.png" class="am-img-responsive am-center" alt="<?php echo $contentInfo["title"];?>" />

<div class="services-lists am-padding-vertical-xl" id="servicesList">
    <div class="am-container">
        <p class="am-margin-vertical-xs am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?><span>&gt;</span><a><?php echo $vo["name"];?></a><?php } ?></p>

        <div class="am-tabs am-margin-top-lg">


            <ul class="am-tabs-nav">
                <?php $listList = service("duxcms","Label","contentList",array( "app"=>"DuxCms", "label"=>"contentList", "class_id"=>4, "limit"=>"3"));  if(is_array($listList)) foreach($listList as $list){ ?>
                <li>
                    <?php if ( $contentInfo['title'] ==  $list['title']  ){ ?>
                    <a href="<?php echo $list["aurl"];?>#servicesList" class="active"><?php echo $list["title"];?></a>
                    <?php }else{ ?>
                    <a href="<?php echo $list["aurl"];?>#servicesList"><?php echo $list["title"];?></a>
                    <?php } ?>
                </li>
                <?php } ?>
            </ul>

            <section class="am-tabs-bd">

                <div class="article-head">
                    <p><img src="<?php echo $contentInfo["image"];?>" alt="" />&emsp;<?php echo $contentInfo["title"];?></p>
                    <img src="<?php echo $contentInfo["rightImage"];?>" class="am-img-responsive" alt="" />
                </div>

                <article class="am-padding-top-lg">
                    <?php echo $contentInfo["servicesContent"];?>
                </article>

                <div class="services-gallery">
                    <p><img src="/public/lib/images/pc/39.png" class="am-img-responsive" /> <span>案例展示</span></p>

                    <?php $listList = service("duxcms","Label","contentList",array( "app"=>"DuxCms", "label"=>"contentList", "class_id"=>2, "limit"=>"3"));  if(is_array($listList)) foreach($listList as $list){ ?>
                    <article>
                        <a href="<?php echo $list["aurl"];?>">
                            <p><span class="am-text-truncate"><?php echo $list["title"];?></span> <?php $a = $list['keywords'];$arr = explode(',', $a); ?><?php foreach ($arr as $a): ?><span class="am-text-sm am-padding-xs am-margin-right-xs"><?=$a; ?></span><?php endforeach; ?></p>
                            <time pubdate datetime="<?php echo date('Y-m-d',$list["time"]);?>">时间：<?php echo date('Y-m-d',$list["time"]);?></time>
                            <p class="am-text-truncate"><?php echo $list["description"];?></p>
                        </a>
                    </article>
                    <?php } ?>
                </div>
            </section>

        </div>

    </div>

</div>



<?php $__Template->display("themes/default/footer"); ?>";s:12:"compile_time";i:1557721021;}";