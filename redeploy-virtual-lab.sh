ssh $1 <<'ENDSSH'
apt-get install -y git
cd labs/*/
rm -rf build/
git pull
make -C src/
cd /var/www/
rm -rf *
cd -
cp -r build/* /var/www/
ENDSSH
