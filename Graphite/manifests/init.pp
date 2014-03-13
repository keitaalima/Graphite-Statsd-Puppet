#This is the init file that will launch the graphite application

class graphite {
	include graphite::web
	include graphite::whisper
	include graphite carbon
	
}


class graphite::web {

  package {
    'bitmap':
      ensure => present;
    'graphite-web':
      ensure => present;
  }

  service { 'httpd':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
  }

   file {"local_settings.py":
    path => "/etc/graphite-web/local_settings.py",
    ensure => file,
    owner   => "root",
    group   => "root",
    mode    => "0644",
    notify  => Service["httpd"],
    content => template("graphite/local_settings.py.erb");
   }

}


class graphite::carbon {

  package {'carbon':
    ensure => present;
  }

  file {'/opt/graphite/lib/carbon/util.py':
    ensure => present,
    source => 'puppet://modules/graphite/util.py',
    mode '0755'
    notify => Package['carbon']
  }

  service { 'carbon':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => Package['carbon'],
  }

  file { '/etc/init.p/carbon-cache':
   ensure => present
   source => 'puppet:///modules/graphite/carbon-cache',
   mode => '0755',
   notify => Service['carbon-cache']
   }

  file { '/etc/init.p/carbon-relay':
    ensure => present
    source => 'puppet:///modules/graphite/carbon-relay',
    mode => '0755',
    notify => Service['carbon-relay']
   }

  file { '/etc/init.p/carbon-aggregator':
    ensure => present
    source => 'puppet:///modules/graphite/carbon-aggregator',
    mode => '0755',
    notify => Service['carbon-aggregator']
   }

   file {'/etc/httpd/conf/extra/vhosts-enabled/graphite-vhosts.conf'
    ensure => present
    source => 'puppet://modules/graphite/graphite-vhosts.conf'
    mode => '0755' ,
    notify => Service['httpd']
   }

   file {'/opt/graphite/carbon.conf':
    ensure => present
    source => 'puppet:///modules/graphite/carbon.conf',
    mode => '0755' ,
   }

  file {'/opt/graphite/graphite.wsgi':
    ensure => present
    source => 'puppet:///modules/graphite/graphite.wsgi',
    mode => '0755' ,
   }

  file {'/opt/graphite/storage-aggregation.conf':
    ensure => present
    source => 'puppet:///modules/graphite/storage-aggregation.conf',
    mode => '0755' ,
   }

  file {'/opt/graphite/storage-schemas.conf':
    ensure => present
    source => 'puppet:///modules/graphite/storage-schemas.conf',
    mode => '0755' ,
   }
}

class graphite::whisper { 
    package {'whisper':
      ensure => present;
  }

}
