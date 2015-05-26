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



## 其他参考：

[原作者说明文档](https://github.com/kaochenlong/eddie-vi://github.com/kaochenlong/eddie-vim2)
