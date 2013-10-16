name             'vagrant'
maintainer       'Michael Nairn'
maintainer_email 'm.nairn@gmail.com'
license           'Apache 2.0'
description      'Installs Vagrant and Vagrant plugins'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.3.5'

%w{ mac_os_x ubuntu }.each do |platform|
  supports platform
end

%w{ dmg }.each do |cookbook|
  depends cookbook
end

recipe 'vagrant::default', "Installs Vagrant and Vagrant plugins"

attribute 'vagrant/download_url',
          :display_name => "Download URL",
          :description => "Download URL",
          :required => "required",
          :default => "http://files.vagrantup.com/packages",
          :recipes => ["vagrant::default"]

attribute 'vagrant/version',
          :display_name => "Vagrant version to install",
          :description => "Vagrant version to install",
          :required => "required",
          :default => "1.3.5",
          :recipes => ["vagrant::default"]

attribute 'vagrant/checksum',
          :display_name => "Checksum for file download",
          :description => "Checksum for file download",
          :required => "required",
          :default => "a40522f5fabccb9ddabad03d836e120ff5d14093",
          :recipes => ["vagrant::default"]