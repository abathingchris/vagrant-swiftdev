Vagrant.configure("2") do |c|
  c.vm.define "swiftdev", primary: true do |config|

    config.vm.box = "ubuntu/trusty64"
    config.vm.hostname = "swiftdev.localhost"

    config.vm.provision :shell,
      :keep_color => true,
      :path => "vm-provisioning/bootstrap.sh"

  end
end