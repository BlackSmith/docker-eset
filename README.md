# Dockerized ESET Security Management Center 7 

Next version of Eset Remote Administration.

MySQL DB + Server + Web Console

## QuickStart

### Installation

  1. install docker + docker-compose
  2. copy .env.sample to .env
  3. edit .env and setup eviroments
  4. enable ports 2222/tcp and 8080/tcp
  5. run docker-compose
```
     docker-compose up
```
  6. installation takes few minutes
  7. after that test server 
  8. create file /etc/systemd/system/eset.service and set WorkingDirectory. 
```
[Unit]
Description=Eset Managment 
After=network.target docker.service
[Service]
WorkingDirectory=/srv/eset
ExecStart=/usr/local/bin/docker-compose up
ExecStop=/usr/local/bin/docker-compose down
Restart=always
[Install]
WantedBy=multi-user.target
```
  9. Enable and start service 
```
systemctl enable eset.service 
systemctl start eset.service
```

