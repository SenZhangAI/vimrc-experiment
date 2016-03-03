## 来源

个人的vimrc配置，参考自：

[eddie-vim2主题](https://github.com/kaochenlong/eddie-vim2)

感谢原作者!

本版本对于原版本改动较大，主要适用于C/C++。

## 安装步骤

```bash
~ $ git clone https://github/SenZhangAI/vimrc-experiment ~/.vim
~ $ ~/.vim/install.sh
```

### 安装注意事项

有些步骤以集成至上述`install.sh`中，但还有些不同系统处理方式不一样。所以需要额外步骤：

### 1. 修正airline的图标乱码，修改终端的字符

参考自：[https://github.com/vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)
其中install.sh中已经安装了fonts，然而有时候出现airline图标乱码的情况
则需要修改所用的终端字体为powerline类的字体

### 2. 配置路径
部分插件需要配置路径，这部分内容已集成至`vimrc/custom_config.vim`中，只需修改该文件中的内容即可。

### 3. Cygwin中安装the_silver_searcher
如需使用[ag]，需要安装相应[the_silver_searcher]，
对于Cygwin为源代码编译安装，需要首先安装**gcc**,**make**,**automake**,**pkg-config**,**libpcre-devel**,**liblzma-dev**。

### 4. Cygwin环境在安装vimproc的问题
在Cygwin环境中，对于插件vimproc，新加入的dll可能需要rebase，否则其执行fork时可能出现bug，
参见[issue](https://github.com/Shougo/vimproc.vim/issues/241)

## 功能介绍

### Plugins管理

[pathogen]
[vundle] 所有安装的插件参见：`./vimrcs/vundles.vim`

### 目录浏览

[NERDTree] 将光标放在NERDTree中输入`?`即可查看键位，以下为常用键位

### 快速编译运行
有以下几种方式

[quickrun] 特点是可以快速运行某代码片段，调试脚本很方便
`F5`  将快捷键`F5`map到编译运行，可编译运行单个c、cpp文件，运行单个python，shell脚本或者makefile等
`make` 具体参见`:h make`

### 语法错误检查

[syntastic]

### 快速跳转

[easymotion]

### 快速注释

[Nerdcommenter]

### 代码格式化

[autoformat] 调用astyle等格式化软件自动格式化代码
[easy-align] 对其等号，冒号，空格等等，对比过tabular和easy-align，easy-align更为出色，尤其在`+=`等符号上，tabular无法准确识别。

### 头文件/源文件切换

[a.vim]

### 代码补全
个人认为vim的代码补全是一个比较大的问题，基本文本而非语义，不够智能，
而且也有可能会使得速度变卡顿

[neocomplete] 代码补全引擎
[neosnippet] 适用于neocomplete的代码片段，但ultisnips更好用
[neosnippet-snippets] neosnippet格式的代码片段模板
[ultisnips] 适用于neocomplete引擎，需要Python支持，其功能很强大
[vim-snippets] 一些常用的ultisnips及neosnippet的代码片段模板
[marching] 对于c++，可以异步载入include文件里的标签，便于STL、Boost补全
[delimitMate] 括号，引号等自动配对补全，注意其快捷键

### 易用性外观

[airline] 提供比较人性化的状态栏和tab标签栏
[vim-over] 其命令行模式下替换可以预览结果
[GoldenView] 分屏时按照黄金分割比自动调整窗口大小
[rainbow] 出现括号嵌套时用不同颜色区分
[indentLine] 用虚线显示indent，可用插件indent-guides代替
[numbers] 方便地管理相对行号/绝对行号
[signature] 显示标签
[quick-scope] 行内跳转时(f/F/t/T)，高亮部分word

### tag相关
tag主要有三方面用途：

#### tag生成代码结构

[tagbar]

#### tag辅助自动补全

参考neocomplete，如果有tag文件，也会针对其补全

#### tag辅助跳转

用cscope更强大，然而没有cscope情况下，用tag跳转到函数定义也非常方便

#### tag自动生成管理

[gutentags]

德语白天好的谐音，用于自动生成、更新tags文件，
避免每次修改后重新手动建立tags索引文件,
但由于vim打开时gutentags会不断向上查找项目主目录，如果一直找不到耗时较长
通常可以忍受，或者项目中建立git仓库（因为会以`.git`文件夹作为判断项目主目录的依据，于是很快返回）

### 快速查找

[ctrlp] 全局模糊查找文件，或者近期使用文件
[ag] 调用ag，全局查找单个单词
[ctrlsf] 全局查找单个词，像sublime text那样在分栏的新窗口中显示
[easygrep] 同样也是查找替换的插件

### git相关
[fugitive] 将git功能集成在vim中，通常只用Gdiff，其他操作最好在shell中
[gitv] vim中直接查看git历史提交，以及每次提交的修改记录
[gitgutter] 用于标示修改的地方，同时还有修改处跳转，取消/提交部分代码的功能，
弥补了git只能提交全文的不足

### 前端相关
[emmet] 神器不必多言
[css-color] 用于显示直接在颜色代码上显示颜色


### 快捷操作

[repeat] 用`.`重复上一次的操作，很多重复操作很有用
[surround] 用于快速添加、删除、修改某一区域的括号，引号等
[wildfire] 快速扩展\收缩选择范围
[multiple-cursors] 多光标选择
[unimpaired] 同一管理了例如buffer切换，list切换等的快捷键

#### unimpaired键位

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

### 其他
重要性不大，不详述

## key-mapping
绝大多数自定义的快捷键放在custom_hotkey.vim文件夹内，可根据自己的习惯修改。
尤其需要注意的是geek部分的改建，是否需要这样改见仁见智。

## 其他参考：

[原作者说明文档](https://github.com/kaochenlong/eddie-vi://github.com/kaochenlong/eddie-vim2)

[ag]:https://github.com/rking/ag.vim
[the_silver_searcher]:https://github.com/ggreer/the_silver_searcher#installing
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
[delimitMate]:https://github.com/Raimondi/delimitMate
[fugitive]:https://github.com/tpope/vim-fugitive
[gitv]:https://github.com/gregsexton/gitv
[gitgutter]:https://github.com/airblade/vim-gitgutter
[easygrep]:https://github.com/dkprice/vim-easygrep
[quickrun]:https://github.com/
[easymotion]:https://github.com/easymotion/vim-easymotion
[airline]:https://github.com/vim-airline/vim-airline
[vim-over]:https://github.com/osyo-manga/vim-over
[GoldenView]:https//github.com/zhaocai/GoldenView.Vim
[rainbow]:https://github.com/luochen1990/ranbow
[numbers]:https://github.com/myusuf3/numbers.vim
[signature]:https://github.com/kshenoy/vim-signature
[a.vim]:https://github.com/nacitar/a.vim
[neocomplete]:https://github.com/Shougo/neocomplete.vim
[neosnippet]:https://github.com/Shougo/neosnippet.vim
[neosnippet-snippets]:https://github.com/Shougo/neosnippet-snippets
[ultisnips]:https://github.com/SirVer/ultisnips
[ctrlsf]:https://github.com/dyng/ctrlsf.vim
[repeat]:https://github.com/tpope/vim-repeat
[surround]:https://github.com/tpope/vim-surround
[wildfire]:https://github.com/gcmt/wildfire.vim
[emmet]:https://github.com/mattn/emmet-vim
[css-color]:https://github.com/ap/vim-css-color
[multiple-cursors]:https://github/terryma/vim-multiple-cursors
