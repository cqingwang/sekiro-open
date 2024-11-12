#!/bin/zsh



 if [ "$1"x = "build"x ]; then
      rm -rf target/deploy
      unzip -d target/deploy target/sekiro-open-demo.zip
      docker build -f "Dockerfile" -t cqingwang/rpc_server:amd64 --platform=linux/amd64 .
 fi

  if [ "$1"x = "serve"x ]; then
       docker run -d --name rpc_server --restart=always --platform linux/amd64 -p 8010:5612 cqingwang/rpc_server:amd64
  fi




