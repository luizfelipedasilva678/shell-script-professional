# fgrep Google pagina1.html
# fgrep Google pagina1.html | cut -d \" -f 2
# fgrep '>Google</a>' pagina1.html
# fgrep '>Google</a>' pagina1.html | sed 's/.*href="//' 
# fgrep '>Google</a>' pagina1.html | sed 's/.*href="// ; s/".*//'
# fgrep -i '>Google</a>' pagina1.html | tr A-Z a-z | sed 's/.*href="// ; s/".*//'
# fgrep -i '>Google</a>' pagina1.html | tr A-Z a-z | tr -d \" | sed 's/.*href=// ; s/>.*//'
tr '\n' ' ' < pagina1.html | awk 'gsub("<[^/]", "\n&")' | fgrep -i '>Google</a>' | tr A-Z a-z | tr -d \" | sed 's/.*href=// ; s/>.*//'