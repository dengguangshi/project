<?php

namespace app\admin\validate;

use think\Validate;

class BrandValidate extends Validate
{
	protected $rule = [
		['name', 'require', '品牌名不能为空'],
		['brief_introduction', 'require', '简介不能为空'],
		['Ico', 'require', '图标不能为空'],
	];

}