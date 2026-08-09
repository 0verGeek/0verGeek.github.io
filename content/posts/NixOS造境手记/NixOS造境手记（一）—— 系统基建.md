---
title: NixOS造境手记（一）—— 系统基建
date: 2026-08-06
url: /posts/nixos-journey-1-infra/
draft: true
tags: []
categories: []
description: ""
summary: ""
keywords: []
canonicalURL: ""
cover:
  image: ""
  alt: ""
  caption: ""
---
# NixOS造境手记（一）—— 系统基建

nixos 是我使用时间最长，也是最喜欢的 linux 发行版，没有之一。简单来说，它同时兼顾了稳定和软件包的新鲜度，独特的系统构建方式让我再也不必担心像 arch 那样的滚挂。

在之前使用 nixos 的时候老想着学习目前社区最流行最推荐的配置方式，以拯救自己那凌乱不堪的/etc/nixos，只是每一次都会为自己的懒惰找到借口。这次终于又回到 nixos，是抱着从纯净系统一步步搭建出整洁易维护配置的目的去的，就用这个系列来记录我的重建过程吧。
## 配置架构
这次我打算使用 flake-parts + dendritic 树突状结构来组织我们的 nixos 配置。
什么是 flake-parts？
这是一个将 flake 配置转变成