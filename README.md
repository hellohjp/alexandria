title: REDACTED电子书上传脚本的使用
date: 2017-10-15 14:51:00
author: 2


---
# REDACTED电子书上传脚本的使用
> 未经作者允许谢绝转载

## 依赖

### General
```bash
sudo apt-get install poppler-utils djvulibre-bin calibre
pip install -r requirements.txt
```

### mktorrent
```bash
git clone https://github.com/Rudde/mktorrent.git
cd mktorrent
make
make install
```

## 使用

### 首次运行
```bash
python alexandria /home
```
出现如下提示：Please edit the configuration file：XXX
使用编辑器打开配置文件XXX

![](https://ptpimg.me/668efx.png)

ptpimg首先到[https://redacted.ch/ptpimg.php](https://redacted.ch/ptpimg.php)获得code，然后用这个code注册ptpimg，注册之后首页F12搜索key,value内的值即是要填入的key。

![](https://ptpimg.me/ykvmuv.png)

到这里配置就全部结束了。

### 再次运行
```bash
python alexandria /path/to/ebook
```
正确配置后即可使用。

### 注意事项
1. 由于电子书metadata可能不全，使用过程中可能出现Failed extract isbn或者Failed to fetch metadata for均属于正常现象。
2. 程序默认5分钟上传一本。
3. 请在使用之前向管理员报备盒子IP浏览网页。
