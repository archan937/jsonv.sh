# Jsonv.sh

A Bash command line tool for converting JSON to CSV

## Usage

Call `jsonv` and pass the paths of the values used for the CSV columns (comma separated).
Optionally, you can pass a prefix for the paths as a second argument.

    $ cat example.json | ./jsonv name,age > example.csv
    $ cat example.csv
    "Dagny Taggart",39
    "Francisco D'Anconia",40
    "Hank Rearden (a.k.a \"The Tank\")",46

## Credits

`jsonv` heavily makes use of `JSON.sh` created by Dominic Tarr ([@dominictarr](https://twitter.com/dominictarr)):

[https://github.com/dominictarr/JSON.sh](https://github.com/dominictarr/JSON.sh)

## License

Copyright (c) 2013 Paul Engel, released under the MIT license

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.