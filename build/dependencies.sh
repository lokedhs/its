if test -n "$GITLAB_CI" -o -n "$CIRCLECI"; then
    sudo() {
        "$@"
    }
fi

install_linux() {
    sudo apt-get update -myq
    sudo apt-get install -my expect
    # For GitLab CI
    sudo apt-get install -my git make gcc libncurses-dev autoconf
    case "$EMULATOR" in
        simh) sudo apt-get install -y simh;;
        pdp10-k?) sudo apt-get install -y libegl1-mesa-dev libgles2-mesa-dev
              sudo apt-get install -y libx11-dev libxt-dev libsdl2-dev
              sudo apt-get install -y libsdl2-image-dev libpcap-dev;;
        klh10) sudo apt-get install -y libusb-1.0-0-dev;;
    esac
}

install_freebsd() {
    pkg upgrade -y
    pkg install -y gmake git expect
    case "$EMULATOR" in
        pdp10-ka) pkg install -y sdl2 sdl2_image pkgconf;;
        pdp10-kl) pkg install -y autoconf;;
    esac
}

install_osx() {
    true
}

"$1"
