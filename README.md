# ansible-vagrant-boxes

Build fast vagrant-base-boxes for further usage.

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

|---------|--------|--------------------------|
| Python  | 2.7.10 | /usr/local/bin/python2.7 |
| pip     | 7.1.2  | /usr/local/bin/pip2.7    |
| ansible | 1.9.4  | /usr/local/bin/ansible   |
|---------|--------|--------------------------|
