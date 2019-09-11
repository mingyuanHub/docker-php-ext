# docker-php-ext
使用 docker-php-ext-enable 扩展 swoole, redis, rabbitmq 


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [docker打包php项目](#docker%E6%89%93%E5%8C%85php%E9%A1%B9%E7%9B%AE)
  - [进入目录，执行docker命令](#%E8%BF%9B%E5%85%A5%E7%9B%AE%E5%BD%95%E6%89%A7%E8%A1%8Cdocker%E5%91%BD%E4%BB%A4)
  - [访问](#%E8%AE%BF%E9%97%AE)
  - [推送镜像到dockerHub](#%E6%8E%A8%E9%80%81%E9%95%9C%E5%83%8F%E5%88%B0dockerhub)
- [docker拉取php项目](#docker%E6%8B%89%E5%8F%96php%E9%A1%B9%E7%9B%AE)
  - [拉取镜像](#%E6%8B%89%E5%8F%96%E9%95%9C%E5%83%8F)
  - [容器生成](#%E5%AE%B9%E5%99%A8%E7%94%9F%E6%88%90)
  - [访问地址](#%E8%AE%BF%E9%97%AE%E5%9C%B0%E5%9D%80)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

### docker打包php项目
    - 安装php7.2
    - 安装PHP扩展redis
    - 安装PHP扩展swoole
    - 安装PHP扩展rabbitMQ

#### 进入目录，执行docker命令
    - docker build -t mamingyuan/php-ext:1.0 .
    - docker docker run -d --name mmy-ext1 -p 9096:80 mamingyuan/php-ext:1.0

#### 访问
    http://localhost:9096/info.php

#### 推送镜像到dockerHub
    docker push mamingyuan/php-ext:1.0

---

### docker拉取php项目
    游戏项目已构建docker镜像

#### 拉取镜像  
    docker pull mamingyuan/mamingyuan/php-ext:1.0
####  容器生成  
    docker run -d -p 8082:80 --name mmy-game  mamingyuan/mamingyuan/php-ext:1.0
#### 访问地址  
    http://39.98.138.27:8082/info.php/
