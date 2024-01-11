-- zip : the library function which maps two lists to a list o pairs of theri corresponding elements.
zip :: [a]->[b]=>[(a,b)]

pair :: [a]->[(a,a)]
pair xs = zip xs (tail xs)

