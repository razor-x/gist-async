# gist-async

[![npm](https://img.shields.io/npm/v/gist-async.svg)](https://www.npmjs.com/package/gist-async)
[![Bower](https://img.shields.io/bower/v/gist-async.svg)](http://bower.io/search/?q=gist-async)
[![GitHub license](https://img.shields.io/github/license/razor-x/gist-async.svg)](./LICENSE.txt)
[![Gemnasium](https://img.shields.io/gemnasium/razor-x/gist-async.svg)](https://gemnasium.com/razor-x/gist-async)
[![Travis](https://img.shields.io/travis/razor-x/gist-async.svg)](https://travis-ci.org/razor-x/gist-async)

## Description

Load GitHub Gists asynchronously and optionally specify which file to show.
This allows you to keep related files in a single gist,
but show them individually on your pages.
The async loading prevents your page rendering from stalling.

[Demo on CodePen](https://codepen.io/razorx/pen/mGKih).

Based on Mark Selby's [async-gists.js].
[async-gists.js]: https://gist.github.com/markselby/7209751

## Usage

**Requires jQuery.**

Include `javascripts/main.coffee` however you like,
or load the compiled file `js/gist-async.min.js`.

Example markup:

```html
<div class="gist" data-gist="8288761" data-gist-file="gist-async.coffee">
  <a href="https://gist.github.com/8288761">Loading file gist-async.coffee from 8288761</a>
</div>
```

The minimal required markup is

```html
<div data-gist="8288761"></div>
```

## Plugins

* [Jekyll plugin] that modifies the gist markup added by its gist Liquid tag.
* [WordPress shortcode] by [timrourke].

[Jekyll plugin]: https://gist.github.com/razor-x/2f62cff9eaae2fcd8cee
[timrourke]: https://github.com/timrourke
[WordPress shortcode]: https://gist.github.com/razor-x/c538b7a7c156956451b0

## Installation

The recommended method is to add this as a dependency
to your project using [npm] with

```
$ npm install --save gist-async
```

or [Bower] with

```
$ bower install --save gist-async
```

Alternatively, you can download a [release][Releases]
or clone the repository directly.

[Bower]: http://bower.io/
[npm]: https://www.npmjs.com/
[Releases]: https://github.com/razor-x/gist-async/releases

## Development and Testing

### Source Code

The [gist-async source] is hosted on GitHub.
Clone the project with

```
$ git clone https://github.com/razor-x/gist-async.git
```

[gist-async source]: https://github.com/razor-x/gist-async

### Requirements

You will need [Node.js] with [npm].

Install the development dependencies with

```
$ npm install
```

[Node.js]: https://nodejs.org/

### Build

Install any Bower dependencies and have Grunt watch for changes with

```
$ npm start
```

### Grunt

Optionally, you may run additional development tasks with [Grunt].
Install it with

```
$ npm install --global grunt-cli
```

Run `$ grunt --help` to see all Grunt tasks.

```
coffeelint # Validate files with CoffeeLint *
clean      # Clean files and folders. *
coffee     # Compile CoffeeScript files into JavaScript *
watch      # Run predefined tasks whenever watched files change.
default    # Alias for "clean", "coffeelint", "coffee" tasks.
```

[Grunt]: http://gruntjs.com/

## Contributing

Please submit and comment on bug reports and feature requests.

To submit a patch:

1. Fork it (https://github.com/razor-x/gist-async/fork).
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Make changes.
4. Commit your changes (`git commit -am 'Add some feature'`).
5. Push to the branch (`git push origin my-new-feature`).
6. Create a new Pull Request.

## License

This CoffeeScript package is licensed under the MIT license.

## Warranty

This software is provided "as is" and without any express or
implied warranties, including, without limitation, the implied
warranties of merchantibility and fitness for a particular
purpose.
