module Gimel.Html.Styled where

import Prelude

import CSS (CSS)
import Gimel.Attributes (Attribute)
import Gimel.Html (Html, react)
import Gimel.Utils (renderCSS)
import React (ReactClass)

foreign import styledRaw :: forall a. String -> String -> ReactClass a

styled :: forall event. String -> CSS -> Array (Attribute event) -> Array (Html event) -> Html event
styled tag css = react (styledRaw tag $ renderCSS css)

type Styled event = CSS -> Array (Attribute event) -> Array (Html event) -> Html event
