sudo apt-get install lighttpd php5 php5-fpm php5-common php5-cli php5-cgi php5-sqlite
sudo apt-get install gedit-developer-plugins phpmyadmin geany geany-common
sudo apt-get install php-pear php-apc php5-curl
# mysqldb for Asterisk eventmanager
# http://codeinthehole.com/writing/how-to-set-up-mysql-for-python-on-ubuntu/
sudo apt-get install python-pip python-mysqldb
pip install -U pip
sudo apt-get install python-dev libmysqlclient-dev
pip install MySQL-python

sudo apt-get install mariadb-server asterisk-doc asterisk-mysql odbc-postgresql libmyodbc
sudo apt-get install w-scan openssh-server ssh vim gdebi filezilla cherrytree curl
sudo apt-get install macchanger

# This will install the SciPy Stack. It is required by gr-gsm
# http://www.scipy.org/install.html
sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose
# Install new version of scapy http://www.secdev.org/projects/scapy
# sudo python setup.py install
