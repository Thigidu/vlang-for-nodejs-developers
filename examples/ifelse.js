function check_os(os) {
    if (os === 'mac') {
        console.log('Use homebrew')
    } else if (os === 'windows') {
        console.log('Use .exe')
    } else {
        console.log('Support only for mac and windows')
    }
}

check_os('mac')
check_os('Linux')
check_os('windows')