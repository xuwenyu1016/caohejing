<?php exit;?>001589268177f8c0e009fecff648727db612cd20af0fs:1980:"a:2:{s:8:"template";s:1916:"

<?php $__Template->display("themes/mobile/header"); ?>

<img src="/public/lib/images/mobile/8.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="case-listing am-padding-sm">
    <p class="am-margin-vertical-xs am-link-muted am-text-xs"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?><span>&gt;</span><a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

    <ul class="am-avg-sm-5 filter-box am-margin-top-sm">
        <?php foreach ($condition as $vo) { ?>

        <li class="select-all <?php if ($vo["value"]==="all"){ ?>  selected <?php } ?> ">
        <a href="<?php echo $vo["url"];?>" class="am-text-center">全部</a>
        </li>
        <?php foreach ($vo["config"] as $v) { ?>
        <li <?php if ($v["value"] == $v["i"]){ ?> class="selected" <?php } ?> >
        <a href="<?php echo $v["url"];?>" class="am-text-center"><?php echo $v["name"];?></a>
        </li>
        <?php } ?>

        <?php } ?>
    </ul>

    <ul class="am-avg-sm-2 am-margin-top-sm case-gallery">
        <?php foreach ($pageList as $vo) { ?>
        <li>
            <article style="background-image: url(<?php echo $vo["image"];?>);">
                <a href="<?php echo $vo["aurl"];?>">
                    <div>
                        <p class="am-text-truncate"><?php echo $vo["title"];?></p>
                        <p><span><?php echo $vo["caseFilter"]['list'][$vo["caseFilter"]['value'][0]] ;?> | <?php echo $vo["city"];?></span>
                            <!--<time pubdate datetime="<?php echo date('Y-m-d',$vo["time"]);?>"><?php echo date('Y-m-d',$vo["time"]);?></time>-->
                        </p>
                    </div>
                </a>
            </article>
        </li>
        <?php } ?>

    </ul>

    <div class="pages"><?php echo $page;?></div>
</div>

<?php $__Template->display("themes/mobile/footer"); ?>";s:12:"compile_time";i:1557732177;}";