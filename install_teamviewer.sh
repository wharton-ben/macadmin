# Install Teamviewer

cd /tmp

# Remove the installer if it exists

rm teamviewer.pkg

# Download from repo

curl -Ok https://mosylepkg.dridesign.com:8043/files/teamviewer/teamviewer.pkg

# Install the pkg

installer -pkg teamviewer.pkg -target /