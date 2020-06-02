#!/bin/bash

# Exit on error
set -e
HOST_DIST=$(lsb_release -s -c)

# Setup environment
mkdir --parents $DEVEL_HPP_DIR
mkdir --parents $DEVEL_HPP_DIR/src
mkdir --parents $DEVEL_HPP_DIR/install

if [ -z ${DEVEL_HPP_DIR} ]; then
    echo "Environment variable DEVEL_HPP_DIR is not set"
    exit -1
fi
if [ -z ${BUILD_TYPE} ]; then
  export BUILD_TYPE=Release
fi

wget -O $DEVEL_HPP_DIR/config.sh https://raw.githubusercontent.com/humanoid-path-planner/hpp-doc/devel/doc/config/ubuntu-18.04-melodic.sh
wget -O $DEVEL_HPP_DIR/src/Makefile https://raw.githubusercontent.com/agimus/agimus/master/doc/Makefile

source $DEVEL_HPP_DIR/config.sh
cd $DEVEL_HPP_DIR/src

make bootstrap
make -s all
make agimus-demos.install
