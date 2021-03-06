#tmux使用及配置
##1.快捷键设置
```
# 设一个快捷键<prefix>r来重新载入配置
bind r source-file ~/.tmux.conf \; display-message "Config reloaded"

# 设置prefix为C+w
unbind C-b
set -g prefix C-w 

# 设置分割窗口的快捷键
bind | split-window -h
bind - split-window -v

# 设置在pane中移动的快捷键
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# 支持鼠标模式
set -g mouse on

# 按下<Escape>进入拷贝模式，v进行选择，y拷贝所选内容，p进行粘贴
bind Escape copy-mode
bind -t vi-copy v begin-selection
bind -t vi-copy y copy-selection
unbind p
bind p pasteb
setw -g mode-keys vi      # Vi风格选择文本
```

##2.相关使用

###Sessions
```
:new<CR>  new session
s  list sessions
$  name session
```

###Windows (tabs)
```
c  create window
w  list windows
n  next window
p  previous window
f  find window
,  name window
&  kill window
```

###Panes (splits)
```
%  vertical split
"  horizontal split

o  swap panes
q  show pane numbers
x  kill pane
+  break pane into window (e.g. to select text by mouse to copy)
-  restore pane from window
⍽  space - toggle between layouts
<prefix> q (Show pane numbers, when the numbers show up type the key to goto that pane)
<prefix> { (Move the current pane left)
<prefix> } (Move the current pane right)
<prefix> z toggle pane zoom
```



