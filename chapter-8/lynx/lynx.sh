# lynx -dump http://google.com
# lynx -dump -nolist http://br-linux.org > brlinux.txt
grep '^[A-Z]' brlinux.txt | sed '1,/^Destaques de hoje/ d' | head -n 5