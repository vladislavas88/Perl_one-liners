--------------------------------------------------------------------------------------------------------------------------------------------

# cat ~/in_url >> ~/in_url_archive && cat ~/in_url | perl -nE "s/\./\\\./g; print;" | perl -nE "s/https\:\/\/www\\\./(\^\|\\.\)/g; print;" | perl -nE "s/https\:\/\//\(\^\|\\.\)/g; print;" | perl -nE "s/http\:\/\/www\\./\(\^\|\\.\)/g; print;" | perl -nE "s/http\:\/\//\(\^\|\\.\)/g; print;" | perl -nE "s/\/.*//g; print;" | perl -nE "s/^\s*$//g; print;" >> /etc/squid/acllist/url_allow_whitelist.lst

--------------------------------------------------------------------------------------------------------------------------------------------

$ cat mail_actual.txt | perl -lanE 'say "$F[2]"'

--------------------------------------------------------------------------------------------------------------------------------------------