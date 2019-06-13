<?php exit;?>001589257006a2d6fe0800fcd7c97ccd5c4d7641e69ds:2053:"a:2:{s:8:"template";s:1989:"<?php $__Template->display("themes/default/header"); ?>

<img src="/public/lib/images/pc/23.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="news-list am-padding-vertical-xl">
    <div class="am-container">
        <p class="am-margin-vertical-xs am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?><span>&gt;</span><a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

        <ul class="am-avg-sm-4 filter-box am-margin-top-lg">
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

        <section class="news-articles am-padding-top-lg">
            <?php foreach ($pageList as $vo) { ?>
            <article>
                <a href="<?php echo $vo["aurl"];?>">
                    <img src="<?php echo $vo["image"];?>" class="am-img-responsive" alt="<?php echo $vo["title"];?>" />

                    <div>
                        <p><?php echo $vo["title"];?></p>
                        <time pubdate datetime="<?php echo date('Y-m-d H:i:s',$vo["time"]);?>"><?php echo date('Y-m-d H:i:s',$vo["time"]);?></time>
                        <p><?php echo $vo["description"];?></p>
                        <span>阅读全文>></span>
                    </div>
                </a>
            </article>
            <?php } ?>
        </section>

        <div class="pages"><?php echo $page;?></div>

    </div>

</div>

<?php $__Template->display("themes/default/footer"); ?>";s:12:"compile_time";i:1557721006;}";