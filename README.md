## Erlyconv
A small text converting library for Erlang between the unicode and different character sets

[![Build Status](https://api.travis-ci.org/eugenehr/erlyconv.svg?branch=master)](https://travis-ci.org/eugenehr/erlyconv)

## Usage
```erlang
Unicode = erlyconv:to_unicode(koi8r, "KOI8-r encoded text"),
Koi8r = erlyconv:from_unicode(koi8r, Unicode),
%% Or direct call
Koi8r = koi8r:from_unicode(Unicode).
```
## License

Erlyconv is licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).