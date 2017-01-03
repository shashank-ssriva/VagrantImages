# VagrantImages
A very simple Vagrant box that hosts both HAProxy & NFS to be used by XL-Release :-)
## To launch this box, follow below steps.
1. Make a directory on your machine, <code>cd</code> into that & place the Vagrantfile there.
2. Then issue <code>vagrant up</code> command which will download the basebox & call Chef script that will setup HAProxy alongwith NFS.
3. Issue <code>vagrant ssh</code> command to check the newly built box.
