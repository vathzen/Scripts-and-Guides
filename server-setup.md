# Server Setup for Oracle Cloud
#### Open Port 80 to Public
```bash
sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 80 -j ACCEPT
sudo netfilter-persistent save
sudo systemctl restart nginx
```
TODO: Read about IP Tables

#### Finally 
