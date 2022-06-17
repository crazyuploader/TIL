# Increase RAM And CPU On Vagrant Machine

We can define RAM and CPU in Vagrantfile.

## Step 1: Edit Vagrantfile

Open and edit `Vagrantfile` to configure RAM and CPU on Vagrant as below -

### For VirtualBox VM

```
config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
end
```

### For Libvirt VM

```
config.vm.provider "libvirt" do |v|
    v.memory = 2048
    v.cpus = 2
end
```

## Step 2: Start/Reload Vagrant Machine

Start the Vagrant Machine with -

```bash
$ vagrant start
```

Reload the Vagrant Machine -

```bash
$ vagrant reload
```

RAM and CPU should be configured, we can confirm with `free -m` and `nproc` command by running in Vagrant Machine.

***Source: [OSTechnix](https://ostechnix.com/how-to-increase-memory-and-cpu-on-vagrant-machine/)***
