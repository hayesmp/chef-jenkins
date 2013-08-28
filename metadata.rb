name             "chef-box"
maintainer       "Fletcher Nichol"
maintainer_email "fnichol@nichol.ca"
license          "Apache 2.0"
description      "Installs and configures Jenkins CI server & slaves"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.5"

recipe "chef-box"

supports 'ubuntu'
supports 'debian'

%w(runit java iptables).each { |cb| depends cb }