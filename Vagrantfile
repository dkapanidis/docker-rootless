Vagrant.configure("2") do |config|
  config.vm.define "rootless" do |rootless|
    rootless.vm.box = "ubuntu/xenial64"
  end

  config.vm.define "rootful" do |rootful|
    rootful.vm.box = "ubuntu/xenial64"
    #rootful.vm.provision "docker"
  end
end
