# node-sass-brunch

[![Build Status](https://travis-ci.org/f-kubotar/node-sass-brunch.png?branch=master)](https://travis-ci.org/f-kubotar/node-sass-brunch)

Adds [node-sass](https://github.com/andrew/node-sass) support to [brunch](http://brunch.io).


## Usage

```bash
$ npm install --save node-sass-brunch
```

### Options

See [node-sass](https://github.com/andrew/node-sass) options.

```coffeescript
config =
  plugins:
    sass:
      includePaths: [ 'lib/', 'mod/' ],
      outputStyle: 'compressed'
```
