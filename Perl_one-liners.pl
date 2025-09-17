#============================================================================================================================================
 
# cat ~/in_url >> ~/in_url_archive && cat ~/in_url | perl -nE "s/\./\\\./g; print;" | perl -nE "s/https\:\/\/www\\\./(\^\|\\.\)/g; print;" | perl -nE "s/https\:\/\//\(\^\|\\.\)/g; print;" | perl -nE "s/http\:\/\/www\\./\(\^\|\\.\)/g; print;" | perl -nE "s/http\:\/\//\(\^\|\\.\)/g; print;" | perl -nE "s/\/.*//g; print;" | perl -nE "s/^\s*$//g; print;" >> /etc/squid/acllist/url_allow_whitelist.lst
  
perl -nE "s/\./\\\./g; print;" 
perl -nE "s/https\:\/\/www\\\./(\^\|\\.\)/g; print;"
perl -nE "s/https\:\/\//\(\^\|\\.\)/g; print;"
perl -nE "s/http\:\/\/www\\./\(\^\|\\.\)/g; print;"
perl -nE "s/http\:\/\//\(\^\|\\.\)/g; print;" 
perl -nE "s/\/.*//g; print;"
perl -nE "s/^\s*$//g; print;"

#============================================================================================================================================

# $ cat mail_actual.txt | perl -lanE 'say "$F[2]"'

perl -lanE 'say "$F[2]"'

#============================================================================================================================================

# $ cat dc.txt | perl -lanE 'say lc("$_" . ".domain.com")' >> dc_lc.txt

perl -lanE 'say lc("$_" . ".domain.com")' >> dc_lc.txt

#============================================================================================================================================

# $ cat dc_lc.txt | perl -lanE 'say "invoke-Command -ComputerName" . " " . "$_" . " " . "\-ScriptBlock \{ get-hotfix \| where {\$\_\.HotFixID \-like \"KB5048671\"\}\} \| ft \-HideTableHeaders \>> C:\\Temp\\CheckDC.txt"'

perl -lanE 'say "invoke-Command -ComputerName" . " " . "$_" . " " . "\-ScriptBlock \{ get-hotfix \| where {\$\_\.HotFixID \-like \"KB5048671\"\}\} \| ft \-HideTableHeaders \>> C:\\Temp\\CheckDC.txt"'

#============================================================================================================================================

# $ cat hotfix_notinstalled1.txt | perl -lanE 'say lc("$_")' >> dc_without_hf.txt

perl -lanE 'say lc("$_")'

#============================================================================================================================================

# $ cat CheckDC.txt | perl -lanE '$_=~ s/^\s+//; if ($_=~ m/^[A-Za-z0-9]/) { chomp($_); say $_}'

perl -lanE '$_=~ s/^\s+//; if ($_=~ m/^[A-Za-z0-9]/) { chomp($_); say $_}'

#============================================================================================================================================

# $ perl -E 'for($i=1; $i<10; $i++) { say "host0$i\\.domain\\.com"; }' > host_domain_com.txt

perl -E 'for($i=1; $i<10; $i++) { say "host0$i\\.domain\\.com"; }'

# $ perl -E 'for($i=10; $i<118; $i++) { say "host$i\\.domain\\.com"; }' >> host_domain_com.txt

perl -E 'for($i=10; $i<118; $i++) { say "host$i\\.domain\\.com"; }'

# $ perl -E 'for($i=1; $i<10; $i++) { say "\(\^\|\\.\)" . "host0$i\\.domain\\.com"; }' >> host_domain_com.txt

perl -E 'for($i=1; $i<10; $i++) { say "\(\^\|\\.\)" . "host0$i\\.domain\\.com"; }'

# $ perl -E 'for($i=10; $i<118; $i++) { say "\(\^\|\\.\)" . "host$i\\.domain\\.com"; }' >> host_domain_com.txt

perl -E 'for($i=10; $i<118; $i++) { say "\(\^\|\\.\)" . "host$i\\.domain\\.com"; }'

#============================================================================================================================================
# JAPH :-)

perl -E 'my @boobs = (40, 46, 41, 40, 46, 41); for (@boobs) { print chr($_); } say "- not mine" if "not hairy";'

#============================================================================================================================================


