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

## Character sets

Erlyconv supports the following characters sets:

atarist, cp037, cp424, cp437, cp500, cp737, cp775, cp850, cp852, cp855, cp856,
cp857, cp860, cp861, cp862, cp863, cp864, cp865, cp866, cp869, cp874, cp936, cp949,
cp1006, cp1026, cp1047, cp1250, cp1251, cp1252, cp1253, cp1254, cp1255, cp1256, cp1257, cp1258,
cp10000, cp10006, cp10007, cp10029, cp10079, cp10081, iso8859-1, iso859-2, iso8859-3, iso8859-4
iso8859-5, iso8859-6, iso8859-7, iso8859-8, iso8859-9, iso8859-10, iso8859-11, iso8859-13, iso8859-14,
iso8859-15, iso8859-16, koi8-r, koi8-u, kps9566, kz1048

## License

Erlyconv is licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).