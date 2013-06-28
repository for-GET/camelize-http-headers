# Camelize HTTP headers [![Build Status][2]][1]

Camelize HTTP headers.

Although HTTP/1.x headers are case insensitive, in some cases you still need them camelcased, as they are generally known.


## Install

`npm install camelize-http-headers --save`


## Usage

```coffee
camelize = require 'camelize-http-headers'
camelize 'content-md5' # Content-MD5
```


## License

[Apache 2.0](LICENSE)


  [1]: https://travis-ci.org/andreineculau/camelize-http-headers
  [2]: https://travis-ci.org/andreineculau/camelize-http-headers.png
