#!/usr/bin/env bash

echo "环境检查"
if ! go version > /dev/null 2>&1; then
    echo "没有检测Golang环境"
fi

echo "下载依赖"
GOPROXY=https://goproxy.io,direct
go mod tidy -v
echo '验证依赖包'

echo "编译文件"
go build -o  app .

echo "运行程序"
./app
