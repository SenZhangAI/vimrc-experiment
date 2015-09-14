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

### 1. [pathogen]

用来管理vim插件，可直接将插件安装至`~/.vim/bundle/`目录下。卸载直接删除。避免vim插件安装和卸载的麻烦。[参考资料](http://blog.csdn.net/zhaoyw2008/article/details/8012757)

例如安装NERDTree只需：

```bash
~ $ cd .vim/bundle/
~/.vim/bundle $ git clone https://github.com/scrooloose/nerdtree.git
```

如需更新执行`git pull origin`，卸载则直接删除。

简单来说，在pathogen的支持下，添加\卸载插件变得十分简单，仅需将插件加入bundle文件夹内，或直接删除。

### 2. [vundle]

如上安装过程如果每次都要每个更新是不是很繁琐？实际上完全可以自动化让vim自己下载和更新，
这就是vundle所做的工作。

原理是告诉vundle需要的插件的下载地址，修改本项目中的`plugin\settings\vundles.vim`文件，将需要的插件添加进去，然后执行`:PluginInstall`自动下载更新。

### 3. [NERDTree]

作用类似于资源管理器，提供项目文件夹下的多文件打开。

个人认为NERDTree的扩展插件NERDTree-tabs不好用，原因是NERDTreeTabsFind在NERDTreeTabs隐藏时不能自动打开，且NERDTree的设置例如行高亮对其无效。实际过程中使用感觉也很鸡肋。

本配置中修改了两个键位：

F2： 显示/隐藏NERDTree
<leader>r: 进入NERDTree

将光标放在NERDTree中输入`?`即可查看键位，以下为常用键位

键位    | 描述
------- | ---------
`j/k`   | 下移/上移一行
`J/K`   | 跳到同级的最下/最上
`o/O`   | 展开/递归展开节点，也可用打开窗口，但不是新建一个标签
`x/X`   | 折叠/递归折叠节点
`go`    | 在本窗口中打开一个文件，但不跳过去，相当于**预览功能**
`s/i`   | 在左右/上下分屏窗口并打开文件
`t/T`   | 在新tab中打开文件，T则是不跳转过去
`:tabo` | 关闭其他tab
`R`     | 递归刷新根节点目录
`m`     | 打开一个menu，可新建文件或者删除文件
`u`     | 进入上一层文件夹
`?`     | 查看帮助文档

### 4. [ctrlp]

类似于sublime text的Ctrl+p功能，快速模糊查找文件。
其快捷键可以参考[这里](https://github.com/kien/ctrlp.vim)

用的最多的是 C-t 在新的tab中打开文件。

### 5. [tagbar]

是taglist的替代品，比taglist好用，

需要先安装ctags，并将ctags的路径配置给`plugin/settings/tagbar.vim`。

<F4> 打开/隐藏tagbar

如出现乱码，尝试选择不同的`g:tagbar_iconchars`。

如需默认打开某指定文件，参考：

```cpp
autocmd FileType cpp,c,h,hpp,cc,cxx nested :call tagbar#autoopen(0)
```

### 6. [Nerdcommenter]

用于快速注释一段代码，或者加入多行注释，常用的快捷键如下：

|        键位        |   功能描述   |
|--------------------|--------------|
| `<leader><leader>` | 快速注释一行 |
| `<leader>cs`       | 多行注释     |

### 7. [syntastic]

用于代码错误检查。

### 8. [snipmate]
用于快速输入给定的代码片段，其中模板来自另一个仓库[vim-snippets]，此仓库fork自[honza/vim-snippets]。
仓库[vim-snippets]会跟进原仓库[honza/vim-snippets]的更新，并在此基础上做个性化的改进，
目前主要想将IntelliJ IDEA中的快捷片段模板移植进来。

### 9. [Gundo]
每次将缓存写入文件时，记录历史，并提供修改的diff，就类似与一个简单的版本回退功能。
具体参见[Gundo]说明。
快捷键设置为`<F5>`

### 10.[easy-align]
用于代码中的`=`, `,`, `:`,以及markdown表格中常用的`|`等字符的自动对齐，使得代码更为美观，使用方法参见[easy-align]
快捷键设置为`<leader>=`
对比过tabular和easy-align，easy-align更为出色，尤其在`+=`等符号上，tabular无法准确识别。

### 11.[unimpaired]
vim中经常会有上下切换的快捷键，种类繁多，包括buffer切换、list切换等待。于是[unimpaired]针对这些，提供统一格式的快捷键，便于切换，详情如下：

| 键位                 | 功能描述       |
| -------------------- | -------------- |
| `[a`                 | :previous      |
| `]a`                 | :next          |
| `[A`                 | :first         |
| `]A`                 | :last          |
| `[b`                 | :bprevious     |
| `]b`                 | :bnext         |
| `[B`                 | :bfirst        |
| `]B`                 | :blast         |
| `[l`                 | :lprevious     |
| `]l`                 | :lnext         |
| `[L`                 | :lfirst        |
| `]L`                 | :llast         |
| `[<C-L>`             | :lpfile        |
| `]<C-L>`             | :lnfile        |
| `[q`                 | :cprevious     |
| `]q`                 | :cnext         |
| `[Q`                 | :cfirst        |
| `]Q`                 | :clast         |
| `[<C-Q>`             | :cpfile        |
| `]<C-Q>`             | :cnfile        |
| `[t`                 | :tprevious     |
| `]t`                 | :tnext         |
| `[T`                 | :tfirst        |
| `]T`                 | :tlast         |

(Note that <C-Q> only works in a terminal if you disable flow control: stty -ixon)

## 其他参考：

[原作者说明文档](https://github.com/kaochenlong/eddie-vi://github.com/kaochenlong/eddie-vim2)

[pathogen]:https://github.com/tpope/vim-pathogen
[vundle]:https://github.com/VundleVim/Vundle.vim
[NERDTree]:https://github.com/scrooloose/nerdtree
[ctrlp]:https://github.com/kien/ctrlp.vim
[tagbar]:https://github.com/majutsushi/tagbar
[Nerdcommenter]:https://github.com/scrooloose/nerdcommenter
[syntastic]:https://github.com/scrooloose/syntastic
[snipmate]:https://github.com/garbas/vim-snipmate
[vim-snippets]:https://github.com/SenZhangAI/vim-snippets
[honza/vim-snippets]:https://github.com/honza/vim-snippets
[Gundo]:sjl.bitbucket.org/gundo.vim
[easy-align]:https://github.com/junegunn/vim-easy-align
[unimpaired]:https://github.com/tpope/vim-unimpaired
