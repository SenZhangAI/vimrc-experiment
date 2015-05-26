## 来源

个人的vimrc配置，参考自：

[eddie-vim2主题](https://github.com/kaochenlong/eddie-vim2)

感谢原作者!

## 安装注意事项

需要注意的是关于airline图标正确显示，避免乱码的现象，[需要下载并安装此字符包](https://powerline.readthedocs.org/en/master/installation.html#patched-fonts)

参考自：[https://github.com/bling/vim-airline](https://github.com/bling/vim-airline)

初次安装需要装ctags，并且，需要将ctags的路径配置到`plugin/settings/taglist.vim`中，修改为：

```vim
let Tlist_Ctags_Cmd='/your/path/ctags'
```

## 插件介绍

### 1. pathogen

用来管理vim插件，可直接将插件安装至`~/.vim/bundle/`目录下。卸载直接删除。避免vim插件安装和卸载的麻烦。[参考资料](http://blog.csdn.net/zhaoyw2008/article/details/8012757)

例如安装NEROTree只需：

```bash
~ $ cd .vim/bundle/
~/.vim/bundle $ git clone https://github.com/scrooloose/nerdtree.git
```

如需更新执行`git pull origin`，卸载则直接删除。

以上仅适用于支持git的插件

### 2. vundle

如上安装过程如果每次都要每个更新是不是很繁琐？实际上完全可以自动化让vim自己下载和更新，
这就是vundle所做的工作。

原理是告诉vundle需要的插件在哪里下载，修改本项目中的`plugin\settings\vundles.vim`文件，将需要的插件添加进去，然后执行`:PluginInstall`自动下载更新。

### 3. NERDTree

作用类似于资源管理器，提供项目文件夹下的多文件打开。

个人认为NERDTree的扩展插件NERDTree-tabs不好用，原因是NERDTreeTabsFind在NERDTreeTabs隐藏时不能自动打开，且NERDTree的设置例如行高亮对其无效。实际过程中使用感觉也很鸡肋。

本配置中修改了两个键位：

F2： 显示/隐藏NERDTree
<leader>r: 进入NERDTree

其他重要键位：[参考资料](http://www.111cn.net/sys/linux/59747.htm)

键位   | 描述
-------| ---------
j/k    | 下移/上移一行
J/K    | 跳到同级的最下/最上
o      | 展开折叠文件夹，也可用打开窗口，但不是新建tab
go     | 在本窗口中打开一个文件，但不跳过去，相当于**预览功能**
s/i    | 在左右/上下分屏窗口并打开文件
t/T    | 在新tab中打开文件，T则是不跳转过去
:tabo  | 关闭其他tab
R      | 递归刷新根节点目录
m      | 打开一个menu，可新建文件或者删除文件

## 其他参考：

[原作者说明文档](https://github.com/kaochenlong/eddie-vi://github.com/kaochenlong/eddie-vim2)
