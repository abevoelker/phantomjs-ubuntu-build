# PhantomJS Ubuntu build

An Ubuntu binary build of [PhantomJS][].

## Usage

Download a prebuilt binary:

```
curl -L https://github.com/abevoelker/phantomjs-ubuntu-build/releases/download/v2016-01-10/phantomjs > /usr/local/bin/phantomjs
chmod +x /usr/local/bin/phantomjs
```

Or if you don't trust me, build it yourself using:

```
make build
```

(the binary will be output as `bin/phantomjs`)

## License

MIT license.

[PhantomJS]: http://phantomjs.org/
