# See : facter -j processorcount processors

# String fact, still a string even with stringify_facts
notice("processors : ${::processorcount}")
if $::processorcount > 1 {
  notice('We have more than one processor')
}

# Structured fact (hash)
#notice("processors : ${::processors['count']}")
#if $::processors['count'] > 1 {
#  notice('We have more than one processor')
#}

