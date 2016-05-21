## Usage

### Service slapd Fails to Start

If the `openldap` user has insufficent rights to read its SSL cert/key/cabundle, the service fails to start without helpful error messages.

This can be debugged by manually starting `slapd`:

```
# slapd -f /etc/ldap/slapd.conf -u openldap -d 64
...
  main: TLS init def ctx failed: -1

# strace slapd -f /etc/ldap/slapd.conf -u openldap -d 64
...
open("/etc/ssl_certs/servercrt.pem", O_RDONLY) = -1 ENOENT (No such file or directory)
write(2, "57403138 main: TLS init def ctx "..., 4357403138 main: TLS init def ctx failed: -1
```


