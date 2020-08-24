module Example where

import Prelude

import React.Basic.DOM as R
import React.Basic.Events (handler_)
import React.Basic.Hooks (Component, component, useState, (/\))
import React.Basic.Hooks as React

mkExample :: Component {}
mkExample = do
  component "Example" \_ -> React.do
    count /\ setCount <- useState 0

    pure $
      R.div_
        [ R.p_ [ R.text $ "You clicked " <> show count <> " times" ]
        , R.button
          { onClick: handler_ (setCount \_ -> count + 1)
          , children:
            [ R.text "Click me" ]
          }
        ]


