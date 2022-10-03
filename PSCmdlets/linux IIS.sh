apt-get update -y && apt-get upgrade -y
apt-get install -y nginx


#cloud-config
packages_upgrade:true
packages:
- nginx
