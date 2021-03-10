# Update
sudo apt update
sudo apt upgrade -y

# Install GateSentry
mkdir gatesentry
cd gatesentry
wget https://blobs.abdullahirfan.com/file/gatesentry/gs-linux-amd64
chmod +x gs-linux-amd64
sudo ./gs-linux-amd64 -service install
sudo ./gs-linux-amd64 -service start