cd marktext-deb

ver_mt=$(curl -s https://api.github.com/repos/marktext/marktext/releases/latest | jq '.tag_name'|tr -d 'v"')
sed -i "s/pkgver=.*/pkgver=$ver_mt/" PKGBUILD
sudo -u builder updpkgsums

rm marktext-linux-${ver_mt}.deb
cd -
