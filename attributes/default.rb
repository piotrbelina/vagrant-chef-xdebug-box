default['xdebug-box']['document_root'] = '/vagrant_data'

default['xdebug']['directives'] = {
	"remote_autostart" => 1,
	"remote_connect_back" => 1,
	"remote_enable" => 1, 
	"remote_log" => '/tmp/remote.log'
}

default['xdebug']['config_file'] = '/etc/php5/apache2/conf.d/xdebug.ini'