# sublime+Anocoda+Pycharm环境

本人喜欢用sublimeIDE，因为他可以在各个语言环境中自由切换，不用打开多个IDE软件，方便的插件下载接口而且界面clear且清晰。由于有blog的习惯，所以一般会边记笔记（markdown）,边调试编写程序。

而这些sublime都满足的本人的要求，如何搭建sublime+Anocoda环境，sublime 还有很多make your life 
easy 的feature

1. Sublime 安装
2. Package control的安装
以上都非常简单百度就能找到不错的分享

Package control是sublime的一个插件下载渠道

<kbd>Clt</kbd>+ <kbd>Shift</kbd>+<kbd>P</kbd>+ 输入”install package“

>这是sublime里头最经常用的快捷键,你会发现他很多用处的。。。，外赠送另外两个插件

之后就有package的list,找到Anocoda就可以了。

对插件的配置都是通过菜单栏中的Prefernces->package setting里对应的插件。Anocode的配置：
1.会通过环境变量的PATH,找到pyhon ，来配置它的编译环境
2."anaconda_linter_mark_style": "none",最好设none，它格式太严格，所有都高亮起来

虽然没有专业的IDE在某些方面那么专业（提示输入，跳转），我觉得作为python coding来说没有大碍

> 附赠几个python的快捷键：
> Clt + P,文件间跳转
> Clt + R,文件结构查看
> Clt + shift + P, 在指定路径新建file
> 

Pycharm一个是调试方面，另外一个方面是它可以在python2.7 和python3.x中很好的切换，

python package下载的渠道很方便，版本也很清晰，可以不用通过pip install
我把layout也作为了两个column的，在菜单View->layout里头可以配置












