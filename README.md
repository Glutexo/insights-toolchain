# Insights Toolchain #

## Requirements ##

* Ruby 2.0.0 – available on RHEL 7 by `yum install ruby`
* Insights client – registered

## Installation ##

* Clone the repository `git clone git@github.com:Glutexo/insights_toolchain.git`
* Build the gem `gem build insights_toolchain.gemspec`
* Install the gem `gem install insights_toolchain-0.0.1.gem`

## Usage ##

```shell
$ sudo /usr/local/bin/insights-client-collect
```

Runs `insights-client --no-upload`, moves the tarball to the current directory and changes the owner to the current user.
