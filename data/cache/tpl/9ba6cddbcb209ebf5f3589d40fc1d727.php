<?php exit;?>001589268171769b0af77842a55d42e683b799435dd2s:1100:"a:2:{s:8:"template";s:1036:"<?php $__Template->display("themes/mobile/header"); ?>

<img src="/public/lib/images/mobile/8.png" class="am-img-responsive am-center" alt="<?php echo $categoryInfo["name"];?>" />

<div class="services-lists am-padding-sm">
    <p class="am-margin-vertical-xs am-link-muted am-text-xs"><a href="/">首页</a><?php foreach ($crumb as $vo) { ?><span>&gt;</span><a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a><?php } ?></p>

    <section data-am-widget="accordion" class="am-accordion am-accordion-gapped" data-am-accordion='{ "multiple": true }'>
        <?php foreach ($pageList as $vo) { ?>
        <dl class="am-accordion-item">
            <dt class="am-accordion-title"><?php echo $vo["title"];?></dt>
            <dd class="am-accordion-bd am-collapse">
                <div class="am-accordion-content">
                    <?php echo $vo["servicesContent"];?>
                </div>
            </dd>
        </dl>
        <?php } ?>

    </section>
</div>


<?php $__Template->display("themes/mobile/footer"); ?>";s:12:"compile_time";i:1557732171;}";