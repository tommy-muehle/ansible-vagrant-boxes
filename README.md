# ansible-vagrant-boxes

Build fast vagrant-base-boxes for further usage with ansible provisioning.

## Requirements

* [virtualbox](https://www.virtualbox.org/)
* [vagrant](https://www.vagrantup.com/)
* [veewee](https://github.com/jedi4ever/veewee)

## Build
```
$ veewee vbox build centos-6.7-x86_64
```

## Export
```
$ veewee vbox export centos-6.7-x86_64
```

## Boxes

### CentOS 6.7 x86_64

* with GuestAdditions 5.0.10

| Package   | Version | Executable                 |
| --------- | ------- | -------------------------- |
| Python    | 2.7.10  | /usr/local/bin/python2.7   |
| pip       | 7.1.2   | /usr/local/bin/pip2.7      |
| ansible   | 1.9.4   | /usr/local/bin/ansible     |
| Ruby      | 2.2.3   | /usr/local/bin/ruby        |

### CentOS 7.2 x86_64

* with GuestAdditions 5.0.20

| Package   | Version | Executable                 |
| --------- | ------- | -------------------------- |
| Python    | 2.7.5   | /usr/bin/python2.7         |
| pip       | 8.1.2   | /usr/bin/pip2.7            |
| ansible   | 2.1.0   | /usr/bin/ansible           |
| Ruby      | 2.3.1   | /usr/local/bin/ruby        |
