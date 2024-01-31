import Html

main = putStrLn (render myhtml)

myhtml_ :: Html

myhtml =
  html_
    (h1 "Hello title")
    ( append_
        (h1_ "Heading")
        ( append_
            (p_ "Paragraph #1")
            (p_ "Paragraph #2")
        )
    )

makeHtml title content = html_ (head_ (title_ title) <> body_ content)
