 hostnamectl
 wget https://s3.amazonaws.com/amazoncloudwatch-agent/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb
 udo dpkg -i -E ./amazon-cloudwatch-agent.deb
 sudo dpkg -i -E ./amazon-cloudwatch-agent.deb
 ls -la /opt/aws/amazon-cloudwatch-agent
 cd /opt/aws/amazon-cloudwatch-agent/

 sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard
 sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c ssm:ubuntu
 mkdir -p /usr/share/collectd/
 touch /usr/share/collectd/types.db
 sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c ssm:ubuntu



linux

wget https://s3.amazonaws.com/amazoncloudwatch-agent/amazon_linux/amd64/latest/amazon-cloudwatch-agent.rpm
sudo rpm -U ./amazon-cloudwatch-agent.rpm
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard
mkdir -p /usr/share/collectd/
touch /usr/share/collectd/types.db
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c ssm:Amazoncloudwatch-linux
