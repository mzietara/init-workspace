## Note that this will install golang but you'll need to add it to your
## path if it's not already in your profile with `export PATH=$PATH:/usr/local/go/bin`
## ref: https://golang.org/doc/install
set -e

v=1.16
os=linux-amd64
tarname=go${v}.${os}.tar.gz
wget https://golang.org/dl/${tarname}
tar -C /usr/local -xzf ${tarname}
rm -f ${tarname} 

