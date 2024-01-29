main = putStrLn myhtml

myhtml = makeHtml "Hello title" "Hello, world!"

makeHtml title content = html_ (head_ (title_ title) <> body_ content)

html_ content = "<html>" <> content <> "</html>"

body_ content = "<body>" <> content <> "</body>"

head_ content = "<head>" <> content <> "</head>"

title_ content = "<title>" <> content <> "</title>"

p_ :: String -> Structure

-- newtype <type-name> = <constructor> <existing-type>
newtype Html = Html string

newtype Structure = Structure string