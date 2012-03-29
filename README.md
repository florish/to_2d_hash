to_2d_hash
===

Convert an existing Hash to a two-dimensional Hash with concatenated keys:

    h = {'a' => 'b', 'c' => {'d' => 'e'}}
    h.to_2d_hash
    # gives {'a' => 'b', 'c_d' => 'e'}
    
Installation
---

    $ gem install to_2d_hash

And then include in you project with Bundler or `require 'to_2d_hash'`. This will add a `to_2d_hash` instance method to all Ruby hash objects.
    
Options
---

- `:delimiter` : glue string to use for key concatenation. Defaults to '_'

Copyright (c) 2012 Floris Huetink
