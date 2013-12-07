# Jsonv.sh

A Bash command line tool for converting JSON to CSV

## Installation

Run the following command to install `jsonv`:

    $ curl -s https://raw.github.com/archan937/jsonv.sh/master/install.sh | bash

To uninstall, run this command:

    $ curl -s https://raw.github.com/archan937/jsonv.sh/master/uninstall.sh | bash

## Usage

Call `jsonv` and pass the paths of the values used for the CSV columns (comma separated).
Optionally, you can pass a prefix for the paths as a second argument.

### Simple JSON

Parsing `examples/simple.json` (3 objects) without a path prefix:

    $ curl -s https://raw.github.com/archan937/jsonv.sh/master/examples/simple.json | jsonv id,name,age
    1,"Dagny Taggart",39
    8,"Francisco D'Anconia",40
    12,"Hank Rearden (a.k.a \"The Tank\")",46

### Complex JSON

Parsing `examples/complex-2.json` (4734 objects) with a path prefix:

    $ curl -s https://raw.github.com/archan937/jsonv.sh/master/examples/complex-2.json | jsonv id,name,gender,balance,age,company,address,phone,email,picture,registered response.data
    1,"Newton Bush","male","$1,653.00",27,"Xanide","710 Corbin Place, Vivian, Mississippi, 6954","+1 (916) 520-2940","newtonbush@xanide.com","http://placehold.it/32x32","1998-02-17T17:00:12 -01:00"
    2,"Ratliff Workman","male","$2,941.00",39,"Bitendrex","680 Menahan Street, Matheny, North Dakota, 3316","+1 (997) 409-2099","ratliffworkman@bitendrex.com","http://placehold.it/32x32","1996-02-02T13:26:48 -01:00"
    3,"Hawkins Jacobs","male","$1,584.00",40,"Marqet","349 Joralemon Street, Mansfield, California, 8655","+1 (831) 508-2216","hawkinsjacobs@marqet.com","http://placehold.it/32x32","2012-07-23T15:13:43 -02:00"
    4,"Whitfield Maldonado","male","$2,519.00",34,"Tri@Tribalog","966 Moffat Street, Wanamie, Indiana, 3006","+1 (940) 554-2482","whitfieldmaldonado@tri@tribalog.com","http://placehold.it/32x32","2002-11-06T13:40:49 -01:00"
    5,"Wise Phelps","male","$1,322.00",23,"Temorak","116 Matthews Court, Orin, Kentucky, 2196","+1 (967) 577-3292","wisephelps@temorak.com","http://placehold.it/32x32","1997-11-20T21:58:48 -01:00"
    ...

### Trying it out locally

Check out this repository first and run the following command:

    $ cat examples/complex-3.json | ./jsonv id,name,gender,balance,age,company,address,phone,email,picture,registered response.data
    1,"Pearlie Hodge","female","$1,347.00",36,"Zappix","371 Abbey Court, Leola, Iowa, 6919","+1 (966) 515-2796","pearliehodge@zappix.com","http://placehold.it/32x32","2004-05-18T01:48:01 -02:00"
    2,"Tessa Saunders","female","$1,398.00",24,"Zounds","399 Provost Street, Ironton, Alaska, 4909","+1 (807) 501-3914","tessasaunders@zounds.com","http://placehold.it/32x32","2001-11-27T14:20:43 -01:00"
    3,"Clarissa Hawkins","female","$2,974.00",33,"Recrisys","566 Drew Street, Elliston, Maine, 9520","+1 (867) 510-2236","clarissahawkins@recrisys.com","http://placehold.it/32x32","2002-09-12T12:01:35 -02:00"
    4,"Lauren Sexton","female","$2,282.00",26,"Lunchpad","461 Lloyd Street, Deercroft, Arkansas, 9022","+1 (937) 509-3538","laurensexton@lunchpad.com","http://placehold.it/32x32","1998-07-01T19:13:55 -02:00"
    5,"Hutchinson Ayers","male","$1,697.00",20,"Mangelica","129 Tabor Court, Freeburn, North Dakota, 2921","+1 (823) 542-2366","hutchinsonayers@mangelica.com","http://placehold.it/32x32","1997-11-20T04:39:49 -01:00"
    ...

In this example, `examples/complex-3.json` contains 19828 objects and is parsed in about 20 seconds.

### Log file

When using `jsonv`, it writes log messages to log file `jsonv.log` located within the same directory as `jsonv` itself.

    =====================
    [2013-12-06 01:10:23] Writing tokens file
    [2013-12-06 01:10:34] Deriving keys
    [2013-12-06 01:10:34] Deriving prefix
    [2013-12-06 01:10:34] Counting entries
    [2013-12-06 01:10:34] Writing map file
    [2013-12-06 01:10:36] Deriving line format
    [2013-12-06 01:10:36] Compiling CSV output
    [2013-12-06 01:10:36] Removing tokens and map file
    [2013-12-06 01:10:36] Done.
    =====================

## Credits

`jsonv` heavily makes use of `JSON.awk` created by Stepk ([step-](https://github.com/step-)):

[https://github.com/step-/JSON.awk](https://github.com/step-/JSON.awk)

Thanks Dominic Tarr ([@dominictarr](https://twitter.com/dominictarr)) for creating `JSON.sh` on which `JSON.awk` is based on:

[https://github.com/dominictarr/JSON.sh](https://github.com/dominictarr/JSON.sh)

Thanks GNU Project ([http://www.gnu.org](http://www.gnu.org)) for creating `gawk`:

[http://www.gnu.org/software/gawk/](http://www.gnu.org/software/gawk/)

## License

Copyright (c) 2013 Paul Engel, released under the MIT license

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
