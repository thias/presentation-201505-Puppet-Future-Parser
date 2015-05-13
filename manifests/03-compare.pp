if $::operatingsystemmajrelease >= 7 {
  $systemd = true
} else {
  $systemd = false
}

notice("systemd is ${systemd}")
















#if versioncmp($::operatingsystemmajrelease, '7') >= 0 {
