module Html
-- Only type of Html is eported because we don't want the uer to themselves make a object of suppose type Structure
-- The constructors for our new types, only the types themselves.
-- If we wanted to export the constructors as well, we would've written Html(Html) or Html(..).
-- This way the user cannot create their own Structure by writing Structure "Hello".
  ( Html,
    append_,
    Structure,
    html_,
    p_,
    h1_,
    append_,
    render,
  )
where

-- newtype <type-name> = <constructor> <existing-type>
newtype Html
  = Html string

newtype Structure
  = Structure string

newtype Title
  = Title string

html_ :: Title -> Structure -> Html
html_ title content =
  Html
    ( el
        "html"
        ( el "head" (el "title" title)
            <> el "body" (getStructureString content)
        )
    )

getStructureString :: Structure -> String
getStructureString content =
  case content of
    Structure str -> str

p_ :: String -> Structure
p_ = Structure . el "p"

el :: String -> String -> String
el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

append_ :: Structure -> Structure -> Structure
append_ (Structure a) (Structure b) =
  Structure (a <> b)

render :: Html -> string
render html =
  case html of
    Html str -> str

escape :: String -> String
escape =
  let escapeChar c =
        case c of
          '<' -> "&lt;"
          '>' -> "&gt;"
          '&' -> "&amp;"
          '"' -> "&quot;"
          '\'' -> "&#39;"
          _ -> [c]
   in concat . map escapeChar