curl -I https://github.com //测试连接
git remote set-url origin git@github.com:HeRping-rose/Zhihu.git //重设为ssh连接
git push -f origin main //push
ssh-keygen -t rsa -C "your_email@example.com"//设置ssh连接 只一次

如果你有代理，比如 Clash、V2Ray、VPN，可以设置 git 走代理：


git config --global http.proxy http://127.0.0.1:7890
git config --global https.proxy http://127.0.0.1:7890
记得根据你的代理实际端口修改 7890。

取消代理用：
git config --global --unset http.proxy
git config --global --unset https.proxy
