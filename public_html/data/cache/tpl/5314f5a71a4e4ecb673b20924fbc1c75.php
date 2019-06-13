<?php exit;?>0015917646120de7b5e56d053c86182d47f20fd139d6s:2604:"a:2:{s:8:"template";s:2540:"<?php $__Template->display("themes/mobile/header"); ?>

<img src="/public/lib/images/mobile/13.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="case-content am-padding-sm">
    <p class="am-margin-vertical-xs am-link-muted am-text-xs"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?><span>&gt;</span><a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?><span>&gt;</span><span><?php echo $contentInfo["title"];?></span></p>

    <section class="am-margin-top-xs am-padding-bottom-xs">

        <p class="am-text-default"><?php echo $contentInfo["title"];?></p>
        
        <img src="<?php echo $contentInfo["picUpload"];?>" class="am-img-responsive am-center am-margin-top-sm" alt="<?php echo $contentInfo["title"];?>" />

        <div class="am-text-sm am-padding-top-xs case-article"><?php echo $contentInfo["content"];?></div>

        <?php if ( $contentInfo['qrcode']  ){ ?>
        <img src="<?php echo $contentInfo["qrcode"];?>" class="am-img-responsive am-center am-margin-top-sm qr-img" alt="<?php echo $contentInfo["title"];?>" />
        <p class="am-text-center am-margin-vertical-sm">扫码关注，了解更多园区详情</p>
        <?php }else{ ?>

        <?php } ?>

        <p class="am-margin-vertical-sm am-padding-top-sm"><a href="/list-dianxinganli.html"> << 返回案例列表</a></p>

    </section>

</div>

<div class="case-column am-padding-horizontal-sm">

    <p class="am-margin-top-0 am-margin-bottom-sm">更多典型案例</p>

    <ul class="am-avg-sm-2 am-margin-vertical-sm am-padding-bottom-sm">
        <?php $listList = service("article","Label","contentList",array( "app"=>"Article", "label"=>"contentList", "class_id"=>2, "expand_id"=>4, "limit"=>"2"));  if(is_array($listList)) foreach($listList as $list){ ?>
        <li>
            <article>
                <a href="<?php echo $list["aurl"];?>">
                    <div style="background-image:url(<?php echo $list["image"];?>);"></div>
                    <p class="am-text-truncate"><?php echo $list["title"];?></p>
                    <p><span><?php echo $list["caseFilter"]['list'][$list["caseFilter"]['value'][0]] ;?> | <?php echo $list["city"];?></span></p>
                    <time pubdate datetime="<?php echo date('Y-m-d',$list["time"]);?>">时间：<?php echo date('Y-m-d',$list["time"]);?></time>
                </a>
            </article>
        </li>
        <?php } ?>
    </ul>

</div>

<?php $__Template->display("themes/mobile/footer"); ?>";s:12:"compile_time";i:1560228612;}";