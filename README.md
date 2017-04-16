# ClipMd
简化markdown的写作的贴图流程，快捷键-快速把剪切板的截图粘贴到markdown，使用github仓库，不依赖其他的服务器


### 示范

演示
![image](http://wanglong001.github.io/images/clipmd_demo.gif)

1. 截图 使用什么截图工具都可以（我是使用QQ截图）
![image](http://wanglong001.github.io/images/20170416_160039.png)
2. Ctrl + F1 （截好的图片如下，不是同一次截图，会有些出入）

![image](http://wanglong001.github.io/images/20170416_160308.png)

3. Ctrl + F2 统一提交（发布）图片
4. 重新打开文件（链接可以找到文件了）
![image](http://wanglong001.github.io/images/20170416_160524.png)

## 使用环境

 1. **windows** 系统
 2. 系统安装  [AutoHotKey官方网站][1]
 3. 使用 **GitPage博客** 而且主题是 [Hexo][2]
 
### 步骤
 
 1. 打开**ClipMd.ahk** 文件
 
```
#你的github在你系统的根目录
hexoPath := "D:/github/wanglong001/"

#你的hexo主题的images文件的【根目录或者images下的子目录】 我的主题是next
PicPath := hexoPath . "themes/next/source/images/" 

#图片的格式
imageFormat := "png"

#图片的命名根式 这里使用时间的格式
filenameFormat := "yyyyMMdd_HHmmss"

#上传后图片链接地址
httpPath := "http://wanglong001.github.io/images/"

#每次生成图片时 是否每次都上传图片 默认是False 不推荐True 
isPushWhenSave := false
```

 2. 操作
*前提：运行ClipMd.ahk*
 - Ctrl + F1 ： 生成图片链接
 - Ctrl + F2 : 发布图片



 
  [1]: https://autohotkey.com/
  [2]: https://hexo.io/