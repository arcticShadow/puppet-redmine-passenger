node default {

  package { 'ruby19':
    ensure => present,
  }

  # Will also update gem, irb, rdoc, rake, etc.
  alternatives { 'ruby':
    path    => '/usr/bin/ruby1.9',
    require => Package['ruby19'],
  }
#  class {'passenger':
#    require => Alternatives['ruby']
#  }
}

