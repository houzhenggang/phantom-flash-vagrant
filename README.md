phantom-flash-vagrant
=====================

Vagrant configuration for PhantomJS 1.10 (with Adobe Flash support)
dependencies
=====================

* Vagrant http://www.vagrantup.com/

installation
=====================

This image should work out of the box.
All you have to do is to launch Vagrant:

```Shell
vagrant up
```

usage
=====================

After the installation succeeded you will be able to enter your new Vagrant image using ssh:

```Shell
vagrant ssh
```

The included demo script shows how phantomjs enables you to take screenshots of youtube videos:

```Shell
phantomjs /vagrant/setup/demo/youtube.js
```

binaries
=====================

the phantomjs binary was built by Ryan Bridges:

* https://github.com/r3b/phantomjs
* http://www.ryanbridges.org/2013/05/21/putting-the-flash-back-in-phantomjs/