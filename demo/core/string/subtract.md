## String#-

    require 'facets/string/subtract'

    ("foobar" - "oo").assert == "fbar"
    ("pizza pizza!" - "zz").assert == "pia pia!"
    ("letters" - /[a-z]+/).assert == ""

