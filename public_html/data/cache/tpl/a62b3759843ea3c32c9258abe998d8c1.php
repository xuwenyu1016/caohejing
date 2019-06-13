<?php exit;?>0015910948685f3a90c4ab3173f25695fdf5bd7bfabfs:2451:"a:2:{s:8:"template";s:2387:"<?php $__Template->display("themes/default/header"); ?>

<img src="/public/lib/images/pc/41.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="case-content">
    <div class="am-container am-padding-vertical-xl">
        <p class="am-margin-vertical-xs am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?><span>&gt;</span><a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?><span>&gt;</span><span><?php echo $contentInfo["title"];?></span></p>

        <ul class="am-avg-sm-2 am-margin-vertical-lg">
            <li class="am-padding-right-sm">
                <article class="am-padding-right-sm">
                    <p><?php echo $contentInfo["title"];?></p>

                    <img src="<?php echo $contentInfo["picUpload"];?>" class="am-img-responsive am-center am-margin-top-sm" alt="<?php echo $contentInfo["title"];?>" />
                </article>

            </li>
            <li class="am-padding-left-sm">
                <article class="am-padding-top-xl"><?php echo $contentInfo["content"];?></article>

            </li>
        </ul>

        <a href="/list-dianxinganli.html"> << 返回案例列表</a>
    </div>
</div>

<div class="case-column am-padding-vertical-xl">
    <div class="am-container">
        <p>更多典型案例</p>

        <ul class="am-avg-sm-4 am-margin-vertical-lg">
            <?php $listList = service("article","Label","contentList",array( "app"=>"Article", "label"=>"contentList", "class_id"=>2, "expand_id"=>4, "limit"=>"4"));  if(is_array($listList)) foreach($listList as $list){ ?>
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
</div>

<?php $__Template->display("themes/default/footer"); ?>";s:12:"compile_time";i:1559558868;}";