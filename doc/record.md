# 配置.dot config 记录

## 沿路解决的小问题

### 1. git clone repo 太慢了

**解决办法**： 刷新本地DNS
```shell
# window
ipconfig /flushdns

# Linux 以下两个选其中一个
systemctl restart nscd
/etc/init.d/nscd restart

# Mac
sudo killall -HUP mDNSResponder

```

### 2. iTerm字体

一个比较好看的字体 [ComicShannsMono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/ComicShannsMono.zip)
