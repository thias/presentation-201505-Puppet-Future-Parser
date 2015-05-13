# My Module - Awesome xXx definition:
define my-mod::xXx () {
  notice("title : ${title}")
  file { "/tmp/${title}": mode => 0644, content => '' }
}

$_tmp = 'foo'
$Xtmp = 'bar'
my-mod::xXx { $_tmp: }
my-mod::xXx { $Xtmp: }

My-mod::XXx [foo] -> My-mod::XXx [bar]

# Your eyes should be bleeding by now...

