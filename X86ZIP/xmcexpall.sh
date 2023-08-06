#!/bin/sh
xmclist $1 2>&1 | grep '^ ' |
  awk '{print "xmclist '$1' --noinfo --nomsg --mem=\x27"$1"\x27 | \
       xmcutil - recfm=F --lrecl=80 --ascii --unblock --replace --ods=\x27"$1".asc\x27"}' |
sh
