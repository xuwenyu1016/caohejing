<?php
return array(
    /* URL规则 */
    'REWRITE_RULE' =>array(
        'list-<urlname>.html' => 'article/Category/index',
        'page-<urlname>.html' => 'page/Category/index',
        'article/<urltitle>.html' => 'article/Content/index',
        'form-<name>/<id>.html' => 'duxcms/Form/info',
        'form-<name>.html' => 'duxcms/Form/index',
        'tags-list.html' => 'duxcms/Tags/index',
        'tags/<name>.html' => 'duxcms/TagsContent/index',
        '<class_urlname>/select/<info>.html' => 'article/Category/filter',
    ),
);