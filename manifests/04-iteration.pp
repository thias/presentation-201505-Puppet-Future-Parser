$users = [ 'pim', 'pam', 'poum' ]

# Create one symlink for each user...
# FIXME : Oh, Puppet, why!? WHY!!??
#$users_files = prefix($users,'/tmp/')
#file { $users_files:
#  FIXME : This won't work...
#  target => "/home/${user}",
#}
define mymodule::user_symlink () {
  $user = $title
  file { "/tmp/${user}":
    ensure => 'link',
    target => "/home/${user}",
  }
}
mymodule::user_symlink { $users: }






#$users.each |String $user| {
