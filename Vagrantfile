Vagrant.configure("2") do |config|
    config.vm.define "app" do |app|
        app.vm.box = "ubuntu/trusty64"
        app.vm.network :private_network, ip: "172.28.128.5"
        app.vm.provision "shell", path: "./app/bootstrap_app.sh"
    end
    
    config.vm.define "web" do |web|
        web.vm.box = "ubuntu/trusty64"
        web.vm.provision "shell", path: "./web/bootstrap_web.sh"
        web.vm.network :private_network, ip: "172.28.128.4"
    end
end
