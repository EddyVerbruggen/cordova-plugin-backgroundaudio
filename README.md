# BackgroundAudio - a Cordova plugin
by [Eddy Verbruggen](http://twitter.com/eddyverbruggen)

## 0. Index

1. [Description](#1-description)
2. [Installation](#3-installation)
	2. [Automatically (CLI / Plugman)](#automatically-cli--plugman)
	2. [Manually](#manually)
3. [Usage](#4-usage)
4. [License](#6-license)

## 1. Description

Allow your app to keep on playing audio when it's in the background.

* Compatible with [Cordova Plugman](https://github.com/apache/cordova-plugman).
* For iOS only, as others (at least Android) don't need a plugin for background audio (TODO explain).

## 2. Installation

### Automatically (CLI / Plugman)
Compatible with [Cordova Plugman](https://github.com/apache/cordova-plugman), compatible with [PhoneGap 3.0 CLI](http://docs.phonegap.com/en/3.0.0/guide_cli_index.md.html#The%20Command-line%20Interface_add_features), here's how it works with the CLI (backup your project first!):

```
$ phonegap local plugin add https://github.com/EddyVerbruggen/cordova-plugin-backgroundaudio.git
```
or
```
$ cordova plugin add https://github.com/EddyVerbruggen/cordova-plugin-backgroundaudio
$ cordova prepare
```

# TODO, below:


### Manually

1\. Add the following xml to your `config.xml` in the root directory of your `www` folder:
```xml
<feature name="ActionSheet">
  <param name="ios-package" value="ActionSheet" />
</feature>
```

2\. Grab a copy of ActionSheet.js, add it to your project and reference it in `index.html`:
```html
<script type="text/javascript" src="js/ActionSheet.js"></script>
```

3\. Download the source files and copy them to your project.

iOS: Copy the `.h` and `.m` files to `platforms/ios/<ProjectName>/Plugins`

## 3. Usage
It's probably easiest to show how the ActionSheets of the screenshots above have been created.
```js
  var callback = function(buttonIndex) {
    setTimeout(function() {
      // like other Cordova plugins (prompt, confirm) the buttonIndex is 1-based (first button is index 1)
      alert('button index clicked: ' + buttonIndex);
    });
  };

  function testShareSheet() {
    var options = {
        'title': 'What do you want with this image?',
        'buttonLabels': ['Share via Facebook', 'Share via Twitter'],
        'addCancelButtonWithLabel': 'Cancel',
        'addDestructiveButtonWithLabel' : 'Delete it'
    };
    window.plugins.actionsheet.show(options, callback);
  };

  function testDeleteSheet() {
    var options = {
        'addCancelButtonWithLabel': 'Cancel',
        'addDestructiveButtonWithLabel' : 'Delete note'
    };
    window.plugins.actionsheet.show(options, callback);
  };

  function testLogoutSheet() {
    var options = {
        'buttonLabels': ['Log out'],
        'addCancelButtonWithLabel': 'Cancel'
    };
    window.plugins.actionsheet.show(options, callback);
  };
```

## 4. License

[The MIT License (MIT)](http://www.opensource.org/licenses/mit-license.html)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
