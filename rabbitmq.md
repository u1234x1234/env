Activate web:
```
sudo rabbitmq-plugins enable rabbitmq_management
```
Create user:  
```
sudo rabbitmqctl add_user test test  
sudo rabbitmqctl set_user_tags test administrator  
sudo rabbitmqctl set_permissions -p / test ".*" ".*" ".*"
```
