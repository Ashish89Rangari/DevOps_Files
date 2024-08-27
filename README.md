# DevOps_Files
All DevOps file, CICD pipeline scripts

# Install Prometheus Grafana In AWS Instance #

1) To Install Prometheus and Create Service for Prometheus 
```
sudo apt update -y
sudo useradd --system --no-create-home --shell /bin/false prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.47.1/prometheus-2.47.1.linux-amd64.tar.gz

```
2) To Enable and start the Prometheus Service
```
sudo systemctl enable prometheus
sudo systemctl start prometheus
