#statsd package installation

class statsd-package{
	
	exec { 'install_node':
		command => '/opt/ git clone https://github.com/joyent/node 
		creates => '/opt/node'
 
	}

	exec {'install_npm':
		command => '/tmp/ wget --no-check-certificate http://npmjs.org/install.sh | sh install.sh'
		creates => '/tmp/install.sh'
	}
}

