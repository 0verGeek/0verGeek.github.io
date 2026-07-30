---
# 以下字段由 Dataview 自动从文件元数据计算
title: "`= regexreplace(this.file.name, '\\.md$', '')`"
# 自动取文件名（不含 .md），改文件名即自动更新
date: "`= dateformat(this.file.ctime, 'yyyy-MM-dd')`"
# 自动取文件创建日期
lastmod: "`= dateformat(this.file.mtime, 'yyyy-MM-dd')`"
# 自动取文件最后修改日期
draft: true
weight:

# === 分类与标签 ===
tags: []
categories: []
author:
  - Camuss

# === 摘要与SEO ===
description: ""
# 文章描述，会显示在摘要和SEO中
summary: ""
# 自定义摘要，不写则自动截取正文前70字
keywords: []
aliases: []
canonicalURL: ""

# === 显示控制 ===
showToc: true
TocOpen: false
hidemeta: false
comments: true
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: false
hideFooter: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
ShowWordCount: true
ShowRssButtonInSectionTermList: true
UseHugoToc: true
ShowCanonicalLink: false
robotsNoIndex: false

# === 封面图 ===
cover:
  image: ""
  alt: ""
  caption: ""
  relative: false
  hidden: false
  responsiveImages: true

# === 编辑链接 ===
editPost:
  URL: ""
  Text: "建议修改"
  appendFilePath: true
---
