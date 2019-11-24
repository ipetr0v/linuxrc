#!/bin/bash -x

# Install Stack
curl -sSL https://get.haskellstack.org/ | sh

# Install Haskell compiler
stack install ghc

# Install Haskell linter
stack install hlint

