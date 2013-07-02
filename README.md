phantom-flash-vagrant
=====================

Vagrant configuration for PhantomJS 1.4 (with Adobe Flash support)
dependencies
=====================

* Vagrant http://www.vagrantup.com/

installation
=====================

This image works out of the box. All you have to do is to install run

```Shell
vagrant up

usage
=====================

After the installation succeeded you will be able to enter your new Vagrant image using ssh:

```Shell
vagrant ssh

phantoms is waiting inside the machine and waits to be called:

```Shell
DISPLAY=:0 phantomjs <arguments>

The include demo script shows how to take screenshots of youtube videos:

```Shell
DISPLAY=:0 phantomjs /vagrant/setup/demo/youtube.js


binaries
=====================

the phantomjs binary was built by Ryan Bridges:

http://www.ryanbridges.org/2013/05/21/putting-the-flash-back-in-phantomjs/