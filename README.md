# Magic Eight Ball: A RubyMotion Example App
[![Build Status](https://secure.travis-ci.org/paulfioravanti/Magic8Ball.png)](http://travis-ci.org/paulfioravanti/Magic8Ball) [![Dependency Status](https://gemnasium.com/paulfioravanti/Magic8Ball.png)](https://gemnasium.com/paulfioravanti/Magic8Ball) [![Code Climate](https://codeclimate.com/github/paulfioravanti/Magic8Ball.png)](https://codeclimate.com/github/paulfioravanti/Magic8Ball)

The original code for this application is located [here](https://github.com/pragmaticstudio/studio-bonus-tracks/tree/master/episode-020/Magic8Ball).  
After finishing the application, I made some cosmetic changes and used the following gems in an attempt to make the code more Ruby/Rails-like:

- [BubbleWrap](https://github.com/rubymotion/BubbleWrap/tree/master/lib/bubble-wrap), in particular [the JSON APIs](https://github.com/rubymotion/BubbleWrap#json) and [UIView Wrappers](https://github.com/rubymotion/BubbleWrap#ui)
- [SugarCube](https://github.com/rubymotion/sugarcube), in particular the syntactic sugar for [NSString handling](https://github.com/rubymotion/sugarcube#-nsstring) and [Symbol usage](https://github.com/rubymotion/sugarcube#-symbol)
- [Teacup](https://github.com/rubymotion/teacup) and [sweettea](https://github.com/colinta/sweettea) for [layout styling](https://github.com/rubymotion/teacup#stylesheets)
- [motion-stump](https://github.com/siuying/motion-stump) for [method stubbing](https://github.com/siuying/motion-stump#stubbing-right-on-the-object) in specs

## Screencast

To watch the original app being built incrementally, check out the
[free 50-minute screencast](http://pragmaticstudio.com/screencasts/rubymotion).

## Quick Start

1. Install [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?mt=12)
2. Install [RubyMotion](http://www.rubymotion.com/)
3. Run `rake` to build the project and run the app in the Simulator
4. Run `rake spec` to run all the specs
5. Run `rake device` to build the project and run the app on a provisioned iOS device  
Issues with setting up provisioning profiles? [This StackOverflow thread](http://stackoverflow.com/questions/13539743/rubymotion-build-error-cant-find-a-provisioning-profile-named-mixios-tea) assisted me.

## Credits

This app was originally created by Daniel Steinberg ([@dimsumthinking](http://twitter.com/dimsumthinking)) as an example
app used during The Pragmatic Studio's [iOS Programming Course](http://pragmaticstudio.com/ios).

## Copyrights

Background image: istockphoto

## Trademarks

Apple, iPhone, iPad, iOS, Cocoa, Mac, Objective-C, and Xcode are registered trademarks of Apple, Inc.

## License

Original code Copyright (c) 2012 The Pragmatic Studio

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Social

<a href="http://stackoverflow.com/users/567863/paul-fioravanti">
  <img src="http://stackoverflow.com/users/flair/567863.png" width="208" height="58" alt="profile for Paul Fioravanti at Stack Overflow, Q&amp;A for professional and enthusiast programmers" title="profile for Paul Fioravanti at Stack Overflow, Q&amp;A for professional and enthusiast programmers">
</a>

[![endorse](http://api.coderwall.com/pfioravanti/endorsecount.png)](http://coderwall.com/pfioravanti)

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/paulfioravanti/magic8ball/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

