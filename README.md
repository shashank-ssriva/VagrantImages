# VagrantImages
A very simple Vagrant box that hosts both HAProxy & NFS to be used by XL-Release :-)
## To launch this box, follow below steps.
1. Download the zipped file on your machine, <code>cd</code> into that directory & issue <code> vagrant init</code> command. This will download the Ubuntu 14.04 basebox & will also create a .vagrant directory inside this parent directory.
2. Then issue <code>vagrant up</code> command which will start the basebox & call Chef script that will setup HAProxy alongwith NFS.
3. Now issue <code>vagrant ssh</code> command to check the newly built box.

### Caveats
Edit the haproxy.cfg & /etc/exports file to reflect your own XLR setup, like host names, IP addresses & directory names.
