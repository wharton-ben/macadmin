# Download the pkg and config file to tmp and then run the installer 

cd /tmp

curl -Ok https://mosylepkg.dridesign.com:8043/files/arcticwolf/arcticwolfagent-2022-01_03.pkg

curl -Ok https://mosylepkg.dridesign.com:8043/files/arcticwolf/customer.json

installer -pkg /tmp/arcticwolfagent-2022-01_03.pkg -target /
