### Introduction

>Fuzz testing or fuzzing is a software testing technique, often automated or semi-automated, that involves providing invalid, unexpected, or random data to the inputs of a computer program. The program is then monitored for exceptions such as crashes, or failing built-in code assertions or for finding potential memory leaks. Fuzzing is commonly used to test for security problems in software or computer systems. It is a form of random testing which has been used for testing hardware or software.
>
> -- https://en.wikipedia.org/wiki/Fuzz_testing

This script applies the concept of fuzzing to the Safari browser on iOS devices. It was written to help the [OpenJailbreak](https://twitter.com/OpenJailbreak) group (which I was a part of) find vulnerabilities in the way Safari handled Quicktime video (.MOV) rendering that could potentially be exploited to help create a jailbreak.

### Dependencies

* A jailbroken iOS device

* [zzuf](http://caca.zoy.org/wiki/zzuf)

* lighttpd (Available on Cydia)


### Usage

###### Initial Setup
1. Change the `server.document-root` in [config.conf](/config.conf) to whatever directory your .mov file is in.
2. Change `file=Demo`in `fuzz.sh` to `file=File` where `File` is the name of your .mov file without the extension.

###### After Setup
1. Run "lighttpd -Df config.conf".
2. Navigate to localhost:8080 in Safari.
3. Refresh.
4. Repeat until Safari crashes.

### Documentation

I wrote two blog articles on the subject in 2014. They are:

* http://nexuist.tumblr.com/post/63803138975/fuzzing-mov-files-on-ios-part-1-introduction-to

* http://nexuist.tumblr.com/post/63805795558/fuzzing-mov-files-on-ios-part-2-supercharging

These will probably move somewhere else at some point. For now, they should stay available.

### A Better Solution

This concept was taken and expanded upon in [fuzzyDuck](https://github.com/isa56k/fuzzyDuck) by isa56k, another OpenJailbreak member.

I recommend you use fuzzyDuck instead of Mobile-ZZUF. This project is just here for historical purposes.

### License
```
MIT License

Copyright (c) 2013 Andi Andreas

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
