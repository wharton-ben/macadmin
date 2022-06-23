#!/usr/bin/env bash#!/usr/bin/env bash

########################################################################################
# These commands will download and install the Cortex XDR package from Mosyle. After   #
# the pkg installs, the config.xml file will be downloaded and copied into the correct #
# location. (/Library/Application Support/PaloAltoNetworks/Traps)					   #
########################################################################################

# Download cortexXDR.pkg

cd /tmp; curl -Ok https://mosylepkg.dridesign.com:8043/files/cortex/cortex_xdr.pkg

# Install Cortex XDR

/usr/sbin/installer -pkg /tmp/cortex_xdr.pkg -target /

# Download Config.xml

cd /tmp; curl -Ok https://mosylepkg.dridesign.com:8043/files/cortex/Config.xml

# Move Config.xml to correct directory

cp /tmp/Config.xml /Library/Application\ Support/PaloAltoNetworks/Traps


