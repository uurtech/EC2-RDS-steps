## Install Postgres On EC2 Ubuntu 22.xx

sudo apt update
sudo apt upgrade -y
sudo apt install postgresql postgresql-contrib -y
sudo systemctl start postgresql
sudo systemctl enable postgresql
sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'postgres';"
sudo -u postgres psql -c "CREATE DATABASE testdb;"
sudo -u postgres psql -c "CREATE USER testuser WITH PASSWORD 'testuser';"