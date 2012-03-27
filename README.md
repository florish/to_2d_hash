to_2d_hash
===

Convert an existing Hash to a two-dimensional Hash with concatenated keys:

    h = {'a' => 'b', 'c' => {'d' => 'e'}}
    h.to_2d_hash
    # gives {'a' => 'b', 'c_d' => 'e'}
    
Options
---

- `:delimiter` : glue string to use for key concatenation. Defaults to '_'

Copyright (c) 2012 Floris Huetink
