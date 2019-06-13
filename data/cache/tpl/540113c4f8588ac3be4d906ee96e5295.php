<?php exit;?>0015891057829fddabd9991300c8f01a5e17bc9ace46s:2068:"a:2:{s:8:"template";s:2004:"<?php $__Template->display("themes/mobile/header"); ?>

<img src="/public/lib/images/pc/23.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="news-conainer am-padding-sm">
    <p class="am-margin-vertical-xs am-link-muted am-text-xs"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?><span>&gt;</span><a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?><span>&gt;</span><span><?php echo $contentInfo["title"];?></span></p>

    <main class="am-margin-top-xs">
        <article>
            <p class="am-text-center"><?php echo $contentInfo["title"];?></p>
            <p class="am-text-center am-text-xs">时间：<time pubdate datetime="<?php echo date('Y-m-d',$vo["time"]);?>"><?php echo date('Y-m-d H:i:s',$contentInfo["time"]);?></time></p>
            <div><?php echo $contentInfo["content"];?></div>

            <ul class="am-avg-sm-1 am-padding-top-sm am-text-xs">
                <li>
                    <div class="am-text-truncate"><span>上一篇：</span>
                        <?php if (empty($prevInfo['aurl'])){ ?>
                        <a class="am-link-muted ">暂无</a>
                        <?php }else{ ?>
                        <a href="<?php echo $prevInfo["aurl"];?>" class="am-link-muted"><?php echo $prevInfo["title"];?></a>
                        <?php } ?>
                    </div>
                </li>
                <li>

                    <div class="am-text-truncate"><span>下一篇：</span>
                        <?php if (empty($nextInfo['aurl'])){ ?>
                        <a class="am-link-muted">暂无</a>
                        <?php }else{ ?>
                        <a href="<?php echo $nextInfo["aurl"];?>" class="am-link-muted"><?php echo $nextInfo["title"];?></a>
                        <?php } ?>
                    </div>
                </li>
            </ul>
        </article>

    </main>

</div>

<?php $__Template->display("themes/mobile/footer"); ?>";s:12:"compile_time";i:1557569782;}";