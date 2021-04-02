#!/usr/bin/env bash

###############################################################################
# Node
###############################################################################

install_node() {
  nvm install node && nvm use node && nvm alias default node
}

# Node and yarn *should* be installed at this point
hash node 2>/dev/null || install_node
hash yarn 2>/dev/null || brew install yarn

# Update npm
npm update -g npm

# Install Node packages
node_packages=(
  bower
  create-react-app
  flow-typed
  semantic-release-cli
  serve
)

# Loop through each package individally because
# any errors will stop all installations
for package in "${node_packages[@]}"; do
  npm install -g "$package"
done
