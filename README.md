# CoffeeScript Package Skeleton

<!--
[![Bower Version](https://img.shields.io/bower/v/coffeescript-package.svg)](http://bower.io/search/?q=coffeescript-package)
-->
<!--
[![npm](https://img.shields.io/npm/v/makenew-coffeescript-package.svg)](https://www.npmjs.com/package/makenew-coffeescript-package)
-->
[![GitHub license](https://img.shields.io/github/license/makenew/coffeescript-package.svg)](./LICENSE.txt)
[![Dependency Status](https://img.shields.io/gemnasium/makenew/coffeescript-package.svg)](https://gemnasium.com/makenew/coffeescript-package)
[![Build Status](https://img.shields.io/travis/makenew/coffeescript-package.svg)](https://travis-ci.org/makenew/coffeescript-package)

## Description

Bootstrap a new [CoffeeScript] package in less than five minutes.

### Features

* [Bower] and [npm] package structure.
* [Grunt] tasks for development.
* [Travis CI] ready.
* [EditorConfig].
* Badges from [Shields.io].

[CoffeeScript]: http://coffeescript.org/
[EditorConfig]: http://editorconfig.org/
[Grunt]: http://gruntjs.com/
[npm]: https://www.npmjs.com/
[Shields.io]: http://shields.io/
[Travis CI]: https://travis-ci.org/

### Usage

This software can be used freely, see [The Unlicense].
The MIT License text appearing in this software is for
demonstration purposes only and does not apply to this software.

1. Clone this repository or download a [release][Releases].

2. Customize this README.
   - Set the title and summary text.
   - Replace the Description section.
   - Update the Source section.
   - Update the Contributing section.
   - Remove or update the badges.

3. Set the copyright year and owner in `LICENSE.txt`.

4. Customize `package.json and `bower.json`.

5. Replace any remaining instances of the placeholder package name.
   You can replace the placeholder package name and GitHub username
   with your own using

   ```
   $ git ls-files -z | xargs -0 sed -i 's/coffeescript-package/your-package/g'
   $ git ls-files -z | xargs -0 sed -i 's/makenew/your_username/g'
   ```

Note that `CHANGELOG.md` is just a template for this skeleton.
The actual changes for this project are documented in the commit history
and summarized under [Releases].

[Releases]: https://github.com/makenew/coffeescript-package/releases
[The Unlicense]: http://unlicense.org/UNLICENSE

### Updating

If you want to pull in future updates from this skeleton,
you can fetch and merge in changes from this repository.

If this repository is already set as `origin`,
rename it to `upstream` with

```
$ git remote rename origin upstream
```

and then configure your `origin` branch as normal.

Otherwise, add this as a new remote with

```
$ git remote add upstream https://github.com/makenew/coffeescript-package.git
```

You can then fetch and merge changes with

```
$ git fetch upstream
$ git merge upstream/master
```

## Installation

The recommended method is to add this as a dependency
to your project using [npm] with

```
$ npm Install --save coffeescript-package
```

or [Bower] with

```
$ bower install --save coffeescript-package
```

Alternatively, you can download a [release][Releases]
or clone the repository directly.

[Bower]: http://bower.io/
[npm]: https://www.npmjs.com/
[Releases]: https://github.com/makenew/coffeescript-package/releases

## Development and Testing

### Source Code

The [coffeescript-package source] is hosted on GitHub.
To clone the project run

```
$ git clone https://github.com/makenew/coffeescript-package.git
```

[coffeescript-package source]: https://github.com/makenew/coffeescript-package

### Requirements

You will need [Node.js] with [npm].

Install the development dependencies with

```
$ npm install
```

[Node.js]: https://nodejs.org/

### Grunt

Optionally, you may run addtional development tasks with [Grunt].
Install it with

```
$ npm Install --global grunt-cli
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

1. Fork it (https://github.com/makenew/coffeescript-package/fork).
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
