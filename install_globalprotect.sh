# Download Global Protect and Cert

# Move to the tmp folder
cd /tmp

# If the GlobalProtect package exists, remove it
rm GlobalProtect.pkg

# Download all of the required files
Curl -Ok https://mosylepkg.dridesign.com:8043/files/globalprotect/GlobalProtect.pkg

Curl -Ok https://mosylepkg.dridesign.com:8043/files/globalprotect/GlobalProtect-Machine-Cert.p12

Curl -Ok https://mosylepkg.dridesign.com:8043/files/globalprotect/GlobalProtect-plist.sh

# Install cert
security import /tmp/GlobalProtect-Machine-Cert.p12 -k /Library/Keychains/System.keychain -P BmWT71yCZ2ApMXwKD1CX

# Set script to 777 and run it
chmod 777 GlobalProtect-plist.sh

./GlobalProtect-plist.sh

# Install GlobalProtect
installer -pkg /tmp/GlobalProtect.pkg -target /