#DuxCms 2.1 ad修复增强版本 
原作者：Life <br/>
原项目地址：https://git.oschina.net/duxcms/DuxCms-2.0.git <br/>
#版权归原作者所有，ad 整理修复<br/>
#duxcms-2.1
fix BY ad  215107992  有问题随时反馈


1、修复数据库无法备份、以及高版本sql不支持mysql的问题

2、增加站点地图sitemap生成工具

3、修复蜘蛛访问统计、新增蜘蛛访问详细页面以及访问时间

4、新增百度主动ping ，可在百度站长平台添加当前站点获取token值 填写再站点设置里的百度准入密钥内

5、修改后台文章显示类型，改为分类树形显示

6、增加多条件筛选，绑定扩展字段 参与筛选的字段选择字段设置内的 参与筛选  ；

筛选字段一般位 下拉菜单，多选，单选

支持单个属性多选

多条件筛选前台标签：

		<!--foreach{$condition as $vo}-->
		    <li class="select-list">
		        <dl id="select1">
		            <dt>{$vo.name}：</dt>
		            <dd class="select-all <!--if{$vo.value==="all"}-->
		                selected
		                <!--{/if}-->
		                ">
		                <a href="{$vo.url}">全部</a>
		            </dd>
		            <!--foreach{$vo.config as $v}-->
		            <dd <!--if{$v.value == $v.i}-->
		                class="selected"
		                <!--{/if}-->
		                >
		                <a href="{$v.url}">{$v.name}</a>
		            </dd>
		            <!--{/foreach}--> </dl>
		    </li>
		<!--{/foreach}-->

7、增加pc端通过访问wap端的网址直接打开

8、修复错误网址默认显示首页不抛出404的bug

9、增加判断栏目是否含有子栏目方法 <code>issub()</code> ，使用方法：

		<!--if{issub($list['class_id'])}-->
			<ul class="sub-menu">
			 <!--list{app="DuxCms" label="categoryList" parent_id=$channel['class_id'] limit=10}-->
					<li class="cat-item cat-item-{$list.class_id}">
						<a href="{$list.curl}" target="_blank">{$list.name}</a>
					</li>
		     <!--{/list}-->
			</ul>
		<!--{/if}-->

10、增加碎片类型,提供单行文本、多行文本、编辑器、文件上传、图片上传、日期时间多种格式。

11、增加单页面自定义字段扩展(新增了一个字段：fieldset_id)

#不能与列表选择同一个扩展类型

12、增加文章复制功能（不含自定义扩展）

13、增加tag name转拼音 （新增了一个字段：urlname）

<code>'tags/urlname.html' => 'duxcms/TagsContent/index',</code>

#合并api版本

文档地址
https://www.kancloud.cn/wb215107992/duxcms_api/