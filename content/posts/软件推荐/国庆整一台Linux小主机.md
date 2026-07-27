---
tags:
  - Linux
  - 装机
  - Omarchy
draft: true
date: "{{ .Date }}"
---
## 简单清灰
国庆放假前心血来潮，想要组一台Linux小主机，正好还刷到了有新的Linux发行版，叫什么Omarchy，看了一眼官网，风格还挺符合我的审美。
![image.png](http://tuchuang.overgeek.online/picgo/20251002200540.png)
于是想到家里还有一台老电脑，大概17、18年买的，没有独显，不过我想运行个linux应该还是可以的。
![0ede81ea9c5d6e6278093f875061dea8.jpg](http://tuchuang.overgeek.online/picgo/0ede81ea9c5d6e6278093f875061dea8.jpg)
拆开以后里面的灰已经比我还高了
![b865cf3722e7c0acb35acb3ccfaa8d07.jpg](http://tuchuang.overgeek.online/picgo/b865cf3722e7c0acb35acb3ccfaa8d07.jpg)

在家找了套清理手机的玩意，刷子和气吹，简单清理了一下灰尘，另外又涂了新的硅脂，没什么经验，涂得好像有点多了。
![](http://tuchuang.overgeek.online/ob-251008-192245.jpeg)
下一步是挑一个 M-ATX 的机箱，于是上网查了一些资料。
找到有两款还不错的，链接放下面：
[鱼巢S5MAX机箱白色matx主板SFX电源中塔侧透台式迷你ITX电脑空箱](https://e.tb.cn/h.S69UjVUUQ40H9yG?tk=mgnUfZaNEqe)
[箱掌门傻瓜超人K77air便携侧透手提迷你台式机ATX电源小主机箱itx](https://e.tb.cn/h.S6MCWNRjQmFDOCn?tk=My1AfZZXXOZ)
最终选择的是上面的鱼巢S5MAX，没别的原因，只是因为便宜为而且颜值还过得去，唯一有点不舒服的点在于，机箱的前面板没有 3.5mm 的耳机孔，导致连接有线耳机很麻烦。
除此之外还选了一张 AX 8260 无线网卡, 无他，依然是因为便宜，才 29 元。
总计 69.5 + 29 = 98.5 元，甚至没到三位数😄
![](http://tuchuang.overgeek.online/ob-251008-200717.jpeg)

---

## 伊利神机
快递有点慢，我已经没法等了，直接开始刷系统!！

首先得先把机器点亮，肯定不能再装回原来的机箱了，那么......
![](http://tuchuang.overgeek.online/ob-251008-203856.jpeg)
![](http://tuchuang.overgeek.online/ob-251008-204003.jpeg)
![](http://tuchuang.overgeek.online/ob-251008-204010.jpeg)
伊利神机!!!!!!!（桌面实在是太乱了🤦）

---
下面制作一个 Omarchy 的系统盘，用来刷机
回到 Omarchy 的官网 [Omarchy](https://omarchy.org/) ，下载 iso 系统文件
然后是安装 rufus: [Rufus - Create bootable USB drives the easy way](https://rufus.ie/en/) , 一个轻松制作系统盘的软件，它只有 Windows 版本，Linux 上可以用Ventoy: [Download . Ventoy](https://www.ventoy.net/en/download.html)。
接着就是安装了