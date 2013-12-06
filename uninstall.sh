echo "Downloading https://raw.github.com/archan937/jsonv.sh/master/Makefile"
curl -L -s -o Makefile https://raw.github.com/archan937/jsonv.sh/master/Makefile
echo "Uninstalling jsonv"
make uninstall
echo "Removing Makefile"
rm Makefile
echo "Done."