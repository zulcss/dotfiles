#!/bin/bash

cat << EOF > .screenrc
sessionname stack
hardstatus alwayslastline '%{= .} %-Lw%{= .}%> %n%f %t*%{= .}%+Lw%< %-=%{g}(%{d}%H/%l%{g})'
setenv PROMPT_COMMAND /bin/true
screen -t shell bash
EOF

service=`systemctl list-units | grep devstack | grep -v system-devstack | awk {'print $1'}`
for i in $service; do
	screen=`echo $i | sed -e s:devstack@::g | sed -e s:.service::g`
	#echo $screen
	##echo $stuff >> screenrc
cat << EOF >> .screenrc
screen -t $screen
stuff "sudo journalctl -a -f --unit $i"
EOF

done
