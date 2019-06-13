<?php exit;?>00158892873652c7a8b0634148051358686e5140e67es:3002:"a:2:{s:8:"template";s:2938:"<?php $__Template->display("themes/default/header"); ?>

<img src="/public/lib/images/pc/23.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="news-conainer am-padding-vertical-xl">
    <div class="am-container">
        <p class="am-margin-vertical-xs am-link-muted"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?><span>&gt;</span><a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?><span>&gt;</span><span><?php echo $contentInfo["title"];?></span></p>

        <main class="am-margin-top-lg">
            <article>
                <p class="am-text-center"><?php echo $contentInfo["title"];?></p>
                <p class="am-text-center">时间：<time pubdate datetime="<?php echo date('Y-m-d',$vo["time"]);?>"><?php echo date('Y-m-d H:i:s',$contentInfo["time"]);?></time></p>
                <div><?php echo $contentInfo["content"];?></div>

                <ul class="am-avg-md-2 am-padding-top-lg ">
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

            <aside>
                <p>热门文章</p>

                <dl>
                    <?php $listList = service("duxcms","Label","contentList",array( "app"=>"DuxCms", "label"=>"contentList", "class_id"=>1, "image"=>"true", "limit"=>"3"));  if(is_array($listList)) foreach($listList as $list){ ?>
                    <dt>
                        <a href="<?php echo $list["aurl"];?>" title="<?php echo $list["title"];?>">
                            <img src="<?php echo $list["image"];?>" class="am-img-responsive am-center" alt="<?php echo $list["title"];?>" />
                            <p class="am-margin-vertical-sm"><?php echo $list["title"];?></p>
                        </a>
                    </dt>
                    <?php } ?>
                </dl>

            </aside>

        </main>

    </div>

</div>

<?php $__Template->display("themes/default/footer"); ?>";s:12:"compile_time";i:1557392736;}";