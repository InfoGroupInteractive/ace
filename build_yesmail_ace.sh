#!/bin/bash
./Makefile.dryice.js normal
ACE_TARGET=$1/ui/client/src/main/java/com/yesmail/enterprise/ui/public/ace/yesmail_ace.js
cp build/src/ace.js $ACE_TARGET
echo '' >> $ACE_TARGET
cat build/src/mode-yesmail_template.js >> $ACE_TARGET 
cp $ACE_TARGET $1/ui/client/gradle-build/gen/enterprise/ace/yesmail_ace.js
