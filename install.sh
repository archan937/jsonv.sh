version="0.1.0"

echo "Downloading https://github.com/archan937/jsonv.sh/archive/$version.tar.gz"
curl -L -s https://github.com/archan937/jsonv.sh/archive/$version.tar.gz -o jsonv.sh-$version.tar.gz

echo "Unpacking jsonv.sh-$version.tar.gz"
tar xzf jsonv.sh-$version.tar.gz

echo "Installing jsonv"
cd jsonv.sh-$version
make install
cd ..

echo "Removing installation files"
rm jsonv.sh-$version.tar.gz
rm -rf jsonv.sh-$version

if ! type "gawk" > /dev/null 2>&1; then
  echo 'WARNING: Make sure to have `gawk` installed in order to make `jsonv` work'
fi

echo "Done."