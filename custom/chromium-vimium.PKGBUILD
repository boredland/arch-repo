# Maintainer: Jonas Strassel <info@jonas-strassel.de>

_id=dbepggeogbaibhgnhhndojpepiihcmeb
pkgname=chromium-vimium
pkgrel=1
pkgver=latest
arch=('any')
license=('ISC')

pkgver() {
    date +"%Y%m%d%H%M%S"
}

prepare() {
    # Create extension json
    cat << EOF > "${_id}".json
{
    "external_update_url": "https://clients2.google.com/service/update2/crx"
}
EOF
}

package() {
    install -Dm644 -t "${pkgdir}/usr/share/chromium/extensions/" "${_id}.json"
}