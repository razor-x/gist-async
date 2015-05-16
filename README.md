# gist-async

[![Bower Version](https://img.shields.io/bower/v/gist-async.svg)](http://bower.io/search/?q=gist-async)
[![MIT License](https://img.shields.io/github/license/razor-x/gist-async.svg)](./LICENSE.txt)
[![Dependency Status](https://img.shields.io/gemnasium/razor-x/gist-async.svg)](https://gemnasium.com/razor-x/gist-async)
[![Build Status](https://img.shields.io/travis/razor-x/gist-async.svg)](https://travis-ci.org/razor-x/gist-async)

by Evan Sosenko

_Load GitHub Gists asynchronously._

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
to your project using [Bower] with

```bash
$ bower install --save gist-async
```

Alternatively, you can download a [release][Releases]
or clone the repository directly.

[Releases]: https://github.com/razor-x/gist-async/releases

## Development and Testing

### Source Code

The [gist-async source](https://github.com/razor-x/gist-async)
is hosted on GitHub.
To clone the project run

```bash
$ git clone https://github.com/razor-x/gist-async.git
```

### Requirements

You will need [npm] with [Grunt] and [Bower].

Install the development dependencies with

```bash
$ npm install
$ bower install
```

### Grunt

Run `grunt --help` to see all Grunt tasks.

```
grunt coffee  # Compile CoffeeScript to JavaScript
grunt clean   # Remove build directory
grunt watch   # Have Grunt watch for changes
```

[Bower]: http://bower.io/
[Grunt]: http://gruntjs.com/
[npm]: https://www.npmjs.com/

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
