let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.8/packages.dhall sha256:0e95ec11604dc8afc1b129c4d405dcc17290ce56d7d0665a0ff15617e32bbf03

let overrides = {=}

let additions =
  { gimel =
    { dependencies =
      [ "aff"
      , "affjax"
      , "argonaut"
      , "argonaut-codecs"
      , "console"
      , "effect"
      , "filterable"
      , "js-timers"
      , "ordered-collections"
      , "react"
      , "react-dom"
      , "web-html"
      ]
    , repo = "https://github.com/DoctorRyner/gimel"
    , version = "master"
    }
  }

in  upstream // overrides // additions
