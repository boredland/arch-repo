# Maintainer: Simon Büeler <simon.bueeler@icloud.com>

_pkgbase=desktop-settings
pkgname=manjaro-sway-settings
pkgver=20201223
pkgrel=1
arch=('any')
url="https://github.com/boredland/$_pkgbase"
_branch=sway
license=('GPL')
pkgdesc='Manjaro Linux sway settings'
groups=('sway-manjaro')
depends=('manjaro-base-skel')
makedepends=('git')
optdepends=('vim: the default cli text editor'
        'ranger: a keyboard centric file manager'
        'gtk-theme-breath: the default gtk theme'
        'breeze-maia-icon-themes: the default icon theme'
        'qutebrowser: a keyboard-centric browser')
conflicts=('manjaro-desktop-settings')
provides=('manjaro-desktop-settings')
source=("git+$url.git#branch=$_branch")
sha256sums=('SKIP')

pkgver() {
    date +"%Y%m%d%H%M%S"
}

package() {
    depends+=('waybar'
        'autotiling'
        'swaylock'
        'sway-launcher-desktop'
        'swayidle'
        'pamixer'
        'playerctl'
        'light'
        'grim'
        'mako'
        'gnome-keyring'
        'blueberry'
        'swaynagmode'
        'htop'
        'ttf-font-logos')
    cd $_pkgbase
    install -d $pkgdir/etc
    cp -r community/sway/skel $pkgdir/etc
    install -d $pkgdir/usr/share/glib-2.0/schemas
    cp community/sway/schemas/* $pkgdir/usr/share/glib-2.0/schemas
}