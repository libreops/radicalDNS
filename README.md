<a href="https://libreops.cc"><img src="https://libreops.cc/static/img/libreops.svg" width="300"></a>

Ansible scripts for radicalDNS.

## Requirements

1. Ansible
2. GPG
3. Running gpg-agent

## Usage

1. Decrypt the `hosts` file:

```
gpg -d hosts.gpg > hosts
```

2. Verify:

```
ansible -m ping radicaldns
```

3. Run the whole thing:

```
ansible-playbook -v main.yml
```

## Vault

You should be able to use vault with your gpg key:

```
ansible-vault view private.yml
```

## Support

[![OpenCollective](https://img.shields.io/opencollective/all/libreops?color=%23800&label=opencollective&style=flat-square)](https://opencollective.com/libreops/)

## Join

[![irc](https://img.shields.io/badge/Matrix-%23libreops:matrix.org-blue.svg)](https://riot.im/app/#/room/#libreops:matrix.org)

## License

[![license](https://img.shields.io/badge/license-AGPL%203.0-6672D8.svg)](LICENSE)
