#!/bin/sh
rm  -rf ~/.IntelliJIdea*/config/eval
rm -rf ~/.java/.userPrefs/jetbrains/idea
sed -i '/evlsprt/d' ~/.IntelliJIdea*/config/options/options.xml
sed -i '/evlsprt/d' ~/.IntelliJIdea*/config/options/other.xml
sed -i '/evlsprt/d' ~/.java/.userPrefs/prefs.xml
find ~/.IntelliJIdea* -type d -exec touch -t $(date +"%Y%m%d%H%M") {} +;
find ~/.IntelliJIdea* -type f -exec touch -t $(date +"%Y%m%d%H%M") {} +;
echo "done :)"
