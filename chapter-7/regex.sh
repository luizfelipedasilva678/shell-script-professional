grep root /etc/passwd
grep ^root /etc/passwd
grep bash$ /etc/passwd
grep "^$" /etc/passwd
grep [Ll]uiz /etc/passwd
grep "^[aeiou]" /etc/passwd
grep "^[^aeiou]" /etc/passwd
grep "[0-9]" /etc/passwd
grep "^.[aeiou]" /etc/passwd
grep "^............................" /etc/passwd
egrep "^.{27}" /etc/passwd
egrep "^.{20,40}$" /etc/passwd
egrep "^.{40}$" /etc/passwd
egrep "[0-9]{3,}" /etc/passwd
egrep "^[aeiou].*bash$" /etc/passwd
egrep "^(ana|carlos|acs):" /etc/passwd
