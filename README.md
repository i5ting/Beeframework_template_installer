# Beeframework_template_installer 

这是基于老郭的Beeframework做的xcode4的项目模板。



## v0.3.1说明：

- example里会有2处过期api，删除即可
- 增加了openudid库
- Prefix.pch文件里增加bee.h引用

## 准备工作

把install-templates.sh 和 templates目录放到Beeframework目录内

![最终目录](doc/1.1.png)

## 安装

在终端中，cd切换到Beeframework目录内，然后执行命令:

	$ ./install-templates.sh -f
	
出现下列文字即安装完成：

	removing old libraries: /Users/sang/Library/Developer/Xcode/Templates/File Templates/beeframework-ios v0.x/
	...creating destination directory: /Users/sang/Library/Developer/Xcode/Templates/File Templates/beeframework-ios v0.x/
	done!


## 完全安装

这里指的是BeeFramework有变动的时候（如增删文件，需要重新生成TemplateInfo.plist文件）

1. 首先安装一个ruby的gem即：TemplateInfo（用于创建TemplateInfo.plist文件的）

		$ gem install TemplateInfo 
	

2. 把install-templates.sh 和 templates目录放到Beeframework目录内
	
		$ cd templates
		$ ruby batch.rb
		$ cd ../
		$ ./install-templates.sh -f
	
3. 出现下列文字即安装完成：

		removing old libraries: /Users/sang/Library/Developer/Xcode/Templates/File Templates/beeframework-ios v0.x/
		...creating destination directory: /Users/sang/Library/Developer/Xcode/Templates/File Templates/beeframework-ios v0.x/
		done!
		
完成!去创建一个项目试试吧

## 文件模板类型
根据模板文件，创建自己的BeeUIBoard实现，加快实现速度，可以达到最大程度的复用。（**如果你不满意这个模板，我希望听到你的声音**）

### BeeUIBoard



### BeeUITableBoard



## 说明

目前该模板是基于Beeframework v0.3版本的，所以对之前的版本可能不兼容，待改进。

### 问题1：无权限


	mkdir: /Users/yourUserName/Library/Developer/Xcode/Templates/File Templates/beeframework-ios v0.x: Permission denied
	mv: rename /Users/yourUserName/Library/Developer/Xcode/Templates/beeframework-ios v0.x//BeeUIBoard class.xctemplate to /Users/ManTung/Library/Developer/Xcode/Templates/File Templates/beeframework-ios v0.x/: No such file or directory

解决方案：
	sudo chown -R yourUserName  ～/Library


more....

## 欢迎fork和反馈

在issue提问或邮件shiren1118@126.com
