# Insights Toolchain #

## How it works ##

```shell
$ sudo ruby -I lib bin/insights-client-collect
```

Runs `insights-client --no-upload`, moves the tarball to the current directory and changes the owner to the current user.
