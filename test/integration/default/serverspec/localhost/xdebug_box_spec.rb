require 'spec_helper'

describe command('php -v | grep -i xdebug') do
	its(:stdout) { should match /.*Xdebug.*/ }
	
end