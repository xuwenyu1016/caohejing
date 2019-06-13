<?php exit;?>00158882182548e2d6be3244affc5d60e949ead27c77s:3009:"a:2:{s:8:"template";s:2945:"<form method="post" class="form-x dux-form form-auto" id="form" action="<?php echo url();?>">
    <div class="panel dux-box  active">
        <div class="panel-head">
            <strong><?php echo $name;?>扩展模型</strong>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <div class="label">
                    <label>名称</label>
                </div>
                <div class="field">
                    <input type="text" class="input" id="name" name="name" size="60" datatype="s" value="<?php echo $info["name"];?>">
                    <div class="input-note">当前扩展模型的描述</div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>表名</label>
                </div>
                <div class="field">
                    <input type="text" class="input" id="table" name="table" size="60" datatype="/^(?!\d)\w+$/" errormsg="请不要包含特殊字符！" value="<?php echo $info["table"];?>">
                    <div class="input-note">数据库中的表名</div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>状态</label>
                </div>
                <div class="field">
                    <div class="button-group button-group-small radio">
                        <?php if(!isset($info['status'])) $info['status'] = 1; ?>
                        <?php if ($info['status']){ ?>
                        <label class="button active"><input name="status" value="1" checked="checked" type="radio">
                        <?php }else{ ?>
                        <label class="button"><input name="status" value="1" type="radio">
                        <?php } ?>
                        <span class="icon icon-check"></span> 正常</label>
                        <?php if (!$info['status']){ ?>
                        <label class="button active"><input name="status" checked="checked" value="0" type="radio">
                        <?php }else{ ?>
                        <label class="button"><input name="status" value="0" type="radio">
                        <?php } ?>
                        <span class="icon icon-times"></span> 禁用</label>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel-foot">
            <div class="form-button">
                <div id="tips"></div>
                <input type="hidden" name="fieldset_id" type="hidden" value="<?php echo $info["fieldset_id"];?>">
                <button class="button bg-main" type="submit">保存</button>
                <button class="button bg" type="reset">重置</button>
            </div>
        </div>
    </div>
</form>
<script>
    Do.ready('base', function () {
        $('#form').duxFormPage();
    });
</script>";s:12:"compile_time";i:1557285825;}";