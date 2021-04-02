#!/usr/bin/env bash

###############################################################################
# Node
###############################################################################

install_node() {
  nvm install 'lts/*' && nvm use 'lts/*' && nvm alias default 'lts/*'
}

# Node and yarn *should* be installed at this point
hash node 2>/dev/null || install_node
hash yarn 2>/dev/null || brew install yarn

# Update npm
npm update -g npm

# Install Node packages
node_packages=(
  create-next-app
  create-react-app
  flow-typed
  gatsby
  http-server
  lerna
  pm2
  renovate
  semantic-release-cli
  serve
  serverless
  simplehttpserver
  sku
  skuba
  wrangler
)

# Loop through each package individally because
# any errors will stop all installations
for package in "${node_packages[@]}"; do
  yarn global add "$package"
done
