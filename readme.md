
##1. 生成对应域名的证书，并放到 ssl 文件夹，证书 cert 重命名为cert.pem ， key 重命名为 privkey.pem

##2. 执行下列命令，替换域名以及 auth0 信息 (记得吧AAA, BBB, CCC 替换成对应的值)
```
sed -i 's#example-clientid#AAA#g' docker-compose.yaml
sed -i 's#example-clientid#AAA#g' management.json
sed -i 's#https://example.auth0.com#BBB#g' management.json
sed -i 's#https://example.auth0.com#BBB#g' docker-compose.yaml
sed -i 's#netbird.example.com#CCC#g' management.json
sed -i 's#netbird.example.com#CCC#g' docker-compose.yaml
```

