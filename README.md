# Jsonv.sh

A Bash command line tool for converting JSON to CSV

## Usage

Call `jsonv` and pass the paths of the values used for the CSV columns (comma separated).
Optionally, you can pass a prefix for the paths as a second argument.

### Simple JSON

Parsing `examples/simple.json` (3 objects) without a path prefix:

    $ cat examples/simple.json | ./jsonv id,name,age > examples/simple.csv
    $ cat examples/simple.csv
    1,"Dagny Taggart",39
    8,"Francisco D'Anconia",40
    12,"Hank Rearden (a.k.a \"The Tank\")",46

### Complex JSON

Parsing `examples/complex.json` (1031 objects) with a path prefix:

    $ cat examples/complex.json | ./jsonv id,name,gender,balance,age,company,address,phone,email,picture,registered response.data > examples/complex.csv
    $ cat examples/complex.csv
    1,"Nieves Miller","male","$2,366.00",29,"Affluex","101 Gates Avenue, Clay, Vermont, 9389","+1 (845) 526-2694","nievesmiller@affluex.com","http://placehold.it/32x32","2005-09-09T04:57:43 -02:00"
    2,"Hopper Peters","male","$1,608.00",26,"Geekmosis","879 Borinquen Pl, Guilford, New Jersey, 4785","+1 (823) 480-2875","hopperpeters@geekmosis.com","http://placehold.it/32x32","2009-03-24T18:38:03 -01:00"
    3,"Robbie Lindsey","female","$1,944.00",30,"Suremax","876 Ditmas Avenue, Kent, Florida, 6112","+1 (957) 462-2668","robbielindsey@suremax.com","http://placehold.it/32x32","2000-08-18T16:45:03 -02:00"
    4,"Brennan Gonzales","male","$3,897.00",23,"Terascape","947 Hall Street, Carlos, Washington, 3321","+1 (963) 525-3342","brennangonzales@terascape.com","http://placehold.it/32x32","2007-08-28T22:45:09 -02:00"
    5,"Trisha Cotton","female","$2,591.00",35,"Dogtown","252 Anchorage Place, Hatteras, Texas, 2766","+1 (849) 597-3794","trishacotton@dogtown.com","http://placehold.it/32x32","2007-08-22T18:10:07 -02:00"
    ....

## Credits

`jsonv` heavily makes use of `JSON.sh` created by Dominic Tarr ([@dominictarr](https://twitter.com/dominictarr)):

[https://github.com/dominictarr/JSON.sh](https://github.com/dominictarr/JSON.sh)

## License

Copyright (c) 2013 Paul Engel, released under the MIT license

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.