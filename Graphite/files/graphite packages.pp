#graphite packages

class graphite_packages {
	
	package { 'bitmap':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/bitmap-1.0.3-7.el6.x86_64.rpm',
    require  => File["/tmp/bitmap-1.0.3-7.el6.x86_64.rpm"],
  }


  package { 'django14-1.4.8':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/Django14-1.4.8-1.el6.noarch.rpm ',
    require  => File["/tmp/Django14-1.4.8-1.el6.noarch.rpm "],
  }


  package { 'expat':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/expat-2.0.1-11.el6_2.i686.rpm',
    require  => File["/tmp/expat-2.0.1-11.el6_2.i686.rpm"],
  }


  package { 'fontconfig':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/fontconfig-2.8.0-3.el6.x86_64.rpm',
    require  => File["/tmp/fontconfig-2.8.0-3.el6.x86_64.rpm"],
  }


  package { 'freetype':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/freetype-2.3.11-14.el6_3.1.i686.rpm ',
    require  => File["/tmp/freetype-2.3.11-14.el6_3.1.i686.rpm "],
  }

	package { 'gcc':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/gcc-c++-4.4.7-4.el6.x86_64.rpm',
    require  => File["/gcc-c++-4.4.7-4.el6.x86_64.rpm"],
  }


	package { 'mod_python':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/mod_python-3.3.1-16.el6.x86_64.rpm',
    require  => File["/tmp/mod_python-3.3.1-16.el6.x86_64.rpm"],
  }

	package { 'mod_wsgi':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/mod_wsgi-3.2-3.el6.x86_64.rpm',
    require  => File["/tmp/mod_wsgi-3.2-3.el6.x86_64.rpm"],
  }

	package { 'openssl-devel':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/ openssl-devel-1.0.1e-16.el6_5.4.x86_64.rpm' ,
    require  => File["/ openssl-devel-1.0.1e-16.el6_5.4.x86_64.rpm "],
  }

	package { 'pycairo':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/pycairo-1.8.6-2.1.el6.x86_64.rpm',
    require  => File["/tmp/pycairo-1.8.6-2.1.el6.x86_64.rpm"],
  }

	package { 'python-crypto':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-crypto-2.0.1-22.el6.x86_64.rpm',
    require  => File["/tmp/python-crypto-2.0.1-22.el6.x86_64.rpm"],
  }


 	package { 'python-devel':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-devel-2.6.6-52.el6.x86_64.rpm',
    require  => File["/tmp/python-devel-2.6.6-52.el6.x86_64.rpm"],
  }


  package { 'python-django':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-django-tagging-0.3.1-7.el6.noarch.rpm',
    require  => File["/tmp/ python-django-tagging-0.3.1-7.el6.noarch.rpm"],
  }

  package { 'python-fpconst':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-fpconst-0.7.3-6.1.el6.noarch.rpm',
    require  => File["/tmp/python-fpconst-0.7.3-6.1.el6.noarch.rpm"],
  }

  package { 'python-libs':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-libs-2.6.6-52.el6.x86_64.rpm',
    require  => File["/tmp/python-libs-2.6.6-52.el6.x86_64.rpm"],
  }

  package { '':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-crypto-2.0.1-22.el6.x86_64.rpm',
    require  => File["/tmp/python-crypto-2.0.1-22.el6.x86_64.rpm"],
  }

  package { 'python-simplejson':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-simplejson-2.0.9-3.1.el6.x86_64.rpm',
    require  => File["/tmp/python-simplejson-2.0.9-3.1.el6.x86_64.rpm"],
  }

  package { 'python-sqlite2':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-sqlite2-2.3.5-2.el6.x86_64.rpm',
    require  => File["/tmp/python-sqlite2-2.3.5-2.el6.x86_64.rpm"],
  }

  package { 'python-twisted':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-twisted-8.2.0-3.1.el6.noarch.rpm',
    require  => File["/tmp/python-twisted-8.2.0-3.1.el6.noarch.rpm"],
  }

  package { 'python-twisted-conch':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-twisted-conch-8.2.0-3.2.el6.x86_64.rpm',
    require  => File["/tmp/python-twisted-conch-8.2.0-3.2.el6.x86_64.rpm"],
  }

  package { 'python-twisted-core':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-twisted-core-8.2.0-4.el6.x86_64.rpm',
    require  => File["/tmp/python-twisted-core-8.2.0-4.el6.x86_64.rpm"],
  }

  package { 'python-twited-lore':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/ python-twisted-lore-8.2.0-3.2.el6.x86_64.rpm',
    require  => File["/tmp/ python-twisted-lore-8.2.0-3.2.el6.x86_64.rpm"],
  }

  package { 'python-twisted-mail':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-twisted-mail-8.2.0-3.2.el6.x86_64.rpm',
    require  => File["/python-twisted-mail-8.2.0-3.2.el6.x86_64.rpm"],
  }
  package { 'python-twisted-names':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-twisted-names-8.2.0-3.2.el6.x86_64.rpm',
    require  => File["/tmp/python-twisted-names-8.2.0-3.2.el6.x86_64.rpm"],
  }
  package { 'python-twisted-news':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-twisted-news-8.2.0-3.2.el6.x86_64.rpm',
    require  => File["/tmp/ python-twisted-news-8.2.0-3.2.el6.x86_64.rpm"],
  }

  package { 'python-twisted-web':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-twisted-web-8.2.0-3.2.el6.x86_64.rpm',
    require  => File["/tmp/python-twisted-web-8.2.0-3.2.el6.x86_64.rpm"],
  }
  package { 'python-twisted-words':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-twisted-words-8.2.0-3.2.el6.x86_64.rpm',
    require  => File["/python-twisted-words-8.2.0-3.2.el6.x86_64.rpm"],
  }
  package { 'python-zope-filesystem':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-zope-filesystem-1-5.el6.x86_64.rpm',
    require  => File["/tmp/python-zope-filesystem-1-5.el6.x86_64.rpm"],
  }

  package { 'python-zope-interface':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/python-zope-interface-3.5.2-2.1.el6.x86_64.rpm',
    require  => File["/tmp/python-zope-interface-3.5.2-2.1.el6.x86_64.rpm"],
  }


  package { 'SOAPpy':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/ SOAPpy-0.11.6-11.el6.noarch.rpm',
    require  => File["/tmp/SOAPpy-0.11.6-11.el6.noarch.rpm"],
  }


  package { 'tix':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/tix-8.4.3-5.el6.x86_64.rpm',
    require  => File["/tmp/tix-8.4.3-5.el6.x86_64.rpm"],
  }


  package { 'tkinter':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/tkinter-2.6.6-52.el6.x86_64.rpm',
    require  => File["/tmp/tkinter-2.6.6-52.el6.x86_64.rpm"],
  }

  package { 'xorg-x11-xbitmaps':
    ensure => installed,
    provider => 'rpm',
    source => 'tmp/xorg-x11-xbitmaps-1.0.1-9.1.el6.x86_64.rpm',
    require  => File["/tmp/xorg-x11-xbitmaps-1.0.1-9.1.el6.x86_64.rpm"],
  }


  package { 'daemonize': ensure => present }

}














































































 {
	'bitmap-1.0.3-7.el6.x86_64.rpm' 'Django14-1.4.8-1.el6.noarch.rpm' 'expat-2.0.1-11.el6_2.i686.rpm ' 'fontconfig-2.8.0-3.el6.i686.rpm' 'fontconfig-2.8.0-3.el6.x86_64.rpm ' 'freetype-2.3.11-14.el6_3.1.i686.rpm ' 'gcc-c++-4.4.7-4.el6.x86_64.rpm' ' git-1.7.1-3.el6_4.1.x86_64.rpm' 'make-3.81-20.el6.x86_64.rpm' ' mod_python-3.3.1-16.el6.x86_64.rpm' 'mod_wsgi-3.2-3.el6.x86_64.rpm' ' openssl-devel-1.0.1e-16.el6_5.4.x86_64.rpm' 'pycairo-1.8.6-2.1.el6.x86_64.rpm' ' python-2.6.6-51.el6.x86_64.rpm' 'python-2.6.6-52.el6.x86_64.rpm' 'python-crypto-2.0.1-22.el6.x86_64.rpm' 
 }