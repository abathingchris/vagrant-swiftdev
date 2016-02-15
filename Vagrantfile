Vagrant.configure("2") do |c|
  c.vm.define "swiftdev", primary: true do |config|

    config.vm.box = "ubuntu/trusty64"
    config.vm.hostname = "swiftdev.localhost"

    # Prevent Vagrant 1.7 from asking for the vagrant user's password
    config.ssh.insert_key = false

    # Install ansible on guest & run playbook
    config.vm.provision :shell,
      :keep_color => true,
      :path => "vm-provisioning/bootstrap.sh"

  end
end