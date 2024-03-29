<?php exit;?>001588567891d7818028f3f57f633cc589558b1084e1s:17059:"a:2:{s:8:"template";s:16994:"<form method="post" class="form-x dux-form form-auto" id="form" action="<?php echo url();?>">
    <div class="tab dux-tab">
        <div class="panel dux-box  active">
            <div class="panel-head">
                <div class="tab-head">
                    <strong><?php echo $name;?>文章栏目</strong>
                    <ul class="tab-nav">
                        <li class="active"><a href="#tab-1">基本信息</a>
                        </li>
                        <li><a href="#tab-2">扩展信息</a>
                        </li>
                        <li><a href="#tab-3">外链信息</a></li>                        
                    </ul>
                </div>
            </div>
            <div class="tab-body">
                <div class="tab-panel active" id="tab-1">
                    <div class="form-group">
                        <div class="label">
                            <label>上级栏目</label>
                        </div>
                        <div class="field">
                            <select class="input" name="parent_id">
                                <option value="0">==顶级栏目==</option>
                                <?php foreach ($categoryList as $vo) { ?>
                                <?php if ($info['parent_id'] == $vo['class_id']){ ?>
                                <option value="<?php echo $vo["class_id"];?>" selected>
                                    <?php }else{ ?>
                                    <option value="<?php echo $vo["class_id"];?>">
                                        <?php } ?>
                                        <?php echo $vo["cname"];?></option>
                                    <?php } ?>
                            </select>
                            <div class="input-note">当前栏目的上级栏目</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label>栏目名称</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="name" name="name" size="60" datatype="s" value="<?php echo $info["name"];?>">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label>栏目属性</label>
                        </div>
                        <div class="field">
                               <?php if(!isset($info['type'])){ $info['type'] = 1 ; }; ?>
                                <div class="button-group button-group-small radio">
                                    <?php if (!$info['type']){ ?>
                                    <label class="button active"><input name="type" value="0" checked="checked" type="radio">
                                    <?php }else{ ?>
                                    <label class="button"><input name="type" value="0" type="radio">
                                    <?php } ?>
                                    <span class="icon icon-check"></span> 频道</label>
                                    <?php if ($info['type']){ ?>
                                    <label class="button active"><input name="type" checked="checked" value="1" type="radio">
                                    <?php }else{ ?>
                                    <label class="button"><input name="type" value="1" type="radio">
                                    <?php } ?>
                                    <span class="icon icon-check"></span> 列表</label>
                                </div>
                                <div class="input-note">频道页不能发布只能调用下级栏目内容</div>
                            </div>
                    </div>
                   <div class="form-group">
                        <div class="label">
                            <label>内容分页数</label>
                        </div>
                        <div class="field">
                            <input type="number" class="input" id="page" name="page" size="60" datatype="n" value="<?php echo default_data($info['page'],$default_config['ARTICLE_PAGE']);?>">
                            <div class="input-note">当前栏目的内容列表下文章每页显示数量</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label>栏目顺序</label>
                        </div>
                        <div class="field">
                            <input type="number" class="input" id="sequence" name="sequence" size="60" datatype="n" value="<?php echo default_data($info['sequence'],1);?>">
                            <div class="input-note">栏目列表调用时的顺序，数字越小越靠前</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label for="sitename">栏目模板</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="class_tpl" name="class_tpl" size="20" datatype="*" value="<?php echo default_data($info['class_tpl'],$default_config['ARTICLE_CLASS_TPL']);?>">
                            <select class="input js-assign" target="#class_tpl">
                                <option value="">请选择</option>
                                <?php foreach ($tplList as $vo) { ?>
                                <option value="<?php echo $vo["name"];?>"><?php echo $vo["file"];?></option>
                                <?php } ?>
                            </select>
                            <div class="input-note">当前栏目列表模板</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label for="sitename">内容模板</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="content_tpl" name="content_tpl" size="20" datatype="*" value="<?php echo default_data($info['content_tpl'],$default_config['ARTICLE_CONTENT_TEL']);?>">
                            <select class="input js-assign" target="#content_tpl">
                                <option value="">请选择</option>
                                <?php foreach ($tplList as $vo) { ?>
                                <option value="<?php echo $vo["name"];?>"><?php echo $vo["file"];?></option>
                                <?php } ?>
                            </select>
                            <div class="input-note">当前栏目下内容模板</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label>栏目图片</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="image" name="image" size="38" value="<?php echo $info["image"];?>">
                            <a class="button bg-blue button-small  js-img-upload" data="image" id="image_upload" preview="image_preview" href="javascript:;" ><span class="icon-upload"> 上传</span></a>
                            <a class="button bg-blue button-small icon-picture-o" id="image_preview" href="javascript:;" > 预览</a>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label>栏目状态</label>
                        </div>
                        <div class="field">
                               <?php if(!isset($info['show'])){ $info['show'] = 1; }; ?>
                                <div class="button-group button-group-small radio">
                                    <?php if ($info['show']){ ?>
                                    <label class="button active"><input name="show" value="1" checked="checked" type="radio">
                                    <?php }else{ ?>
                                    <label class="button"><input name="show" value="1" type="radio">
                                    <?php } ?>
                                    <span class="icon icon-check"></span> 开启</label>
                                    <?php if (!$info['show']){ ?>
                                    <label class="button active"><input name="show" checked="checked" value="0" type="radio">
                                    <?php }else{ ?>
                                    <label class="button"><input name="show" value="0" type="radio">
                                    <?php } ?>
                                    <span class="icon icon-times"></span> 关闭</label>
                                </div>
                                <div class="input-note">隐藏后在调用栏目列表时不显示</div>
                            </div>
                    </div>
                </div>
                <div class="tab-panel" id="tab-2">
                    <div class="form-group">
                        <div class="label">
                            <label>子标题</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="subname" name="subname" size="60" value="<?php echo $info["subname"];?>">
                            <div class="input-note">扩展标题的副标题信息</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label>栏目URL</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="urlname" name="urlname" size="60" value="<?php echo $info["urlname"];?>">
                            <div class="input-note">设置URL规则后会生效</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label>栏目关键词</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="keywords" name="keywords" size="60" value="<?php echo $info["keywords"];?>">
                            <div class="input-note">当前栏目的关键词</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label for="sitename">栏目描述</label>
                        </div>
                        <div class="field">
                            <textarea class="input" id="description" name="description" rows="3" cols="62"><?php echo $info["description"];?></textarea>
                            <div class="input-note">当前栏目的描述信息</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label for="sitename">内容列表排序</label>
                        </div>
                        <div class="field">
                            <select class="input" name="content_order" id="content_order">
                                    <?php if ($info['content_order'] == 'time DESC'){ ?>
                                    <option value="time DESC" selected>
                                    <?php }else{ ?>
                                    <option value="time DESC">
                                    <?php } ?>
                                    发布时间新->旧</option>
                                    <?php if ($info['content_order'] == 'time ASC'){ ?>
                                    <option value="time ASC" selected>
                                    <?php }else{ ?>
                                    <option value="time ASC">
                                    <?php } ?>
                                    发布时间 旧->新</option>
                                    <?php if ($info['content_order'] == 'sequence DESC'){ ?>
                                    <option value="sequence DESC" selected>
                                    <?php }else{ ?>
                                    <option value="sequence DESC">
                                    <?php } ?>
                                    自定义排序 大->小</option>
                                    <?php if ($info['content_order'] == 'sequence ASC'){ ?>
                                    <option value="sequence ASC" selected>
                                    <?php }else{ ?>
                                    <option value="sequence ASC">
                                    <?php } ?>
                                    自定义排序 小->大</option>
                                  </select>
                            <div class="input-note">栏目的内容列表下文章的顺序</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label>绑定字段集</label>
                        </div>
                        <div class="field">
                            <select class="input" name="fieldset_id">
                               <option value="0">==不绑定==</option>
                                <?php foreach ($expandList as $vo) { ?>
                                <?php if ($info['fieldset_id'] == $vo['fieldset_id']){ ?>
                                <option value="<?php echo $vo["fieldset_id"];?>" selected>
                                    <?php }else{ ?>
                                    <option value="<?php echo $vo["fieldset_id"];?>">
                                        <?php } ?>
                                        <?php echo $vo["name"];?></option>
                                    <?php } ?>
                            </select>
                            <div class="input-note">绑定后添加内容时可使用扩展字段</div>
                        </div>
                    </div>
                </div>
                <div class="tab-panel" id="tab-3">
                    <div class="form-group">
                        <div class="label">
                            <label>http外链</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="url" name="url" size="60" value="<?php echo $info["url"];?>">
                            <div class="input-note">网站外部链接</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label>网站内链</label>
                        </div>
                        <div class="field">
                            <select class="input" name="cid">
                                <option value="0">==顶级栏目==</option>
                                <?php foreach ($categoryList as $vo) { ?>
                                <?php if ($info['cid'] == $vo['class_id']){ ?>
                                <option value="<?php echo $vo["class_id"];?>" selected>
                                    <?php }else{ ?>
                                    <option value="<?php echo $vo["class_id"];?>">
                                        <?php } ?>
                                        <?php echo $vo["cname"];?></option>
                                    <?php } ?>
                            </select>
                            <div class="input-note">网站内部链接,只需选择栏目名称</div>
                        </div>
                    </div>                    
                </div>
            </div>
            <div class="panel-foot">
                <div class="form-button">
                    <div id="tips"></div>
                    <input type="hidden" name="class_id" type="hidden" value="<?php echo $info["class_id"];?>">
                    <button class="button bg-main" type="submit">保存</button>
                    <button class="button bg" type="reset">重置</button>
                </div>
            </div>
        </div>
    </div>
</form>
<script>
    Do.ready('base', function () {
        $('#form').duxFormPage();
    });
</script>";s:12:"compile_time";i:1557031891;}";