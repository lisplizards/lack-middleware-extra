# lack-middleware-extra

This middleware adds a hash-table to the Lack environment under the key `LACK.EXTRA`.

Arbitrary data can be stored under this hash-table by other middlewares, thereby limiting
the size of the Clack environment property list.

## Usage

Wrap app:

```lisp
(funcall lack/middleware/extra:*lack-middleware-extra* *app*)
```

Lack Builder:

```lisp
(lack:builder
 :extra
 *app*)
```

## Development

Run tests:

```lisp
(asdf:test-system :foo.lisp.lack-middleware-extra)
```

## Installation

Not in Quicklisp, so clone to "local-projects/".

## Author

* John Newton (<a href="mailto:jnewton@lisplizards.dev">jnewton@lisplizards.dev</a>)

## Copyright

Copyright (c) 2024 John Newton

## License

Apache-2.0
