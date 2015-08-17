## 来源

个人的vimrc配置，参考自：

[eddie-vim2主题](https://github.com/kaochenlong/eddie-vim2)

感谢原作者!

## 安装步骤

```bash
~ $ git clone https://github/SenZhangAI/vimrc ~/.vim
~ $ chmod 755 ~/.vim/install.sh
~ $ ~/.vim/install.sh
```

## 安装注意事项

有些步骤以集成至上述`install.sh`中，但还有些不同系统处理方式不一样。所以需要额外步骤：

### 1. 修正airline的图标乱码，修改终端的字符

参考自：[https://github.com/bling/vim-airline](https://github.com/bling/vim-airline)
其中install.sh中已经安装了fonts，然而有时候需要修改所用的终端字体为powerline类的字体

### 2. 安装ctags，配置ctags路径
初次安装需要装ctags，并且，需要将ctags的路径配置到`plugin/settings/tagbar.vim`中，修改为：

```vim
let Tlist_Ctags_Cmd='/your/path/ctags'
```

## 插件介绍

### 1. pathogen

用来管理vim插件，可直接将插件安装至`~/.vim/bundle/`目录下。卸载直接删除。避免vim插件安装和卸载的麻烦。[参考资料](http://blog.csdn.net/zhaoyw2008/article/details/8012757)

例如安装NERDTree只需：

```bash
~ $ cd .vim/bundle/
~/.vim/bundle $ git clone https://github.com/scrooloose/nerdtree.git
```

如需更新执行`git pull origin`，卸载则直接删除。

简单来说，在pathogen的支持下，添加\卸载插件变得十分简单，仅需将插件加入bundle文件夹内，或直接删除。

### 2. vundle

如上安装过程如果每次都要每个更新是不是很繁琐？实际上完全可以自动化让vim自己下载和更新，
这就是vundle所做的工作。

原理是告诉vundle需要的插件的下载地址，修改本项目中的`plugin\settings\vundles.vim`文件，将需要的插件添加进去，然后执行`:PluginInstall`自动下载更新。

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
u      | 进入上一层文件夹

### 4. ctrlp

类似于sublime text的Ctrl+p功能，快速模糊查找文件。
其快捷键可以参考[这里](https://github.com/kien/ctrlp.vim)

用的最多的是 C-t 在新的tab中打开文件。

### 5. tagbar

是taglist的替代品，比taglist好用，

需要先安装ctags，并将ctags的路径配置给`plugin/settings/tagbar.vim`。

<F4> 打开/隐藏tagbar

如出现乱码，尝试选择不同的`g:tagbar_iconchars`。

如需默认打开某指定文件，参考：

```cpp
autocmd FileType cpp,c,h,hpp,cc,cxx nested :call tagbar#autoopen(0)
```

### 6. nerdcommenter

用于快速注释一段代码，或者加入多行注释，常用的快捷键如下：

|        键位        |   功能描述   |
|--------------------|--------------|
| `<leader><leader>` | 快速注释一行 |
| `<leader>cs`       | 多行注释     |



快速注释一行

## 其他参考：

[原作者说明文档](https://github.com/kaochenlong/eddie-vi://github.com/kaochenlong/eddie-vim2)
