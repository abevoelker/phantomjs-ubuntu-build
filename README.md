# PhantomJS Ubuntu build

An Ubuntu binary build of [PhantomJS][].

## Usage

Download a prebuilt binary:

```
curl -L https://github.com/abevoelker/phantomjs-ubuntu-build/releases/download/2016-01-10-v3/phantomjs > /usr/local/bin/phantomjs
chmod +x /usr/local/bin/phantomjs
```

Or if you don't trust me, build it yourself using:

```
make build
```

(the binary will be output as `bin/phantomjs`)

Note: you may still need [some libraries][build-instructions] installed thanks
to the wonders of dynamic linking:

```
apt-get install build-essential g++ flex bison gperf ruby perl \
  libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
  libpng-dev libjpeg-dev python libx11-dev libxext-dev
```

## License

MIT license.

[PhantomJS]: http://phantomjs.org/
[build-instructions]: http://phantomjs.org/build.html
