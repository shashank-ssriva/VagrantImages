# VagrantImages
A very simple Vagrant box that hosts both HAProxy & NFS to be used by XL-Release :-)
## To launch this box, follow below steps : -
1. Download the zipped file on your machine, <code>cd</code> into that directory, remove the Vagrantfile & then issue <code> vagrant init</code> command. This will create a .vagrant directory inside this parent directory & initialise vagrant.
2. Copy back the Vagrantfile from this repository to your current directory. Then issue <code>vagrant up</code> command which will download the Ubuntu 14.04 basebox, start it & then call Chef script that will setup HAProxy alongwith NFS.
3. Now issue <code>vagrant ssh</code> command to check the newly built box.
4. You may also create a new .vagrant directory inside the parent directory & issue <code>vagrant up</code> to start it off.

### Caveats : -
Edit the haproxy.cfg & /etc/exports file to reflect your own XLR setup, like host names, IP addresses & directory names.

### Known Issues : -
Vagrant will throw below error if your vagrant version is < 1.8.4.

```
==> default: [2017-01-03T07:36:04+00:00] INFO: HTTP Request Returned 404 Not Found: Parent not found: chefzero://localhost:8889/nodes
==> default: 
==> default: ================================================================================
==> default: Chef encountered an error attempting to load the node data for "vagrant-fb4844cb"
==> default: ================================================================================
==> default: 
==> default: 
==> default: Resource Not Found:
==> default: -------------------
==> default: The server returned a HTTP 404. This usually indicates that your chef_server_url is incorrect.
```

To fix it, remove your old installation of vagrant using <code>rm -rf /opt/vagrant</code> & <code>rm -rf /usr/local/bin/vagrant</code> commands. Afterwards, install the latest version. I have tested it on my current version of 1.8.4.
