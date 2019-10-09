# Copyright 2019 CNRS, Airbus SAS
# Author: Florent Lamiraux

# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:

# 1. Redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer.

# 2. Redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution.

# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

INCLUDE(cmake/base.cmake)
INCLUDE(cmake/hpp.cmake)

SET(PROJECT_NAME agimus-doc)
SET(PROJECT_DESCRIPTION "Documentation of Agimus framework")
SET(PROJECT_URL "")

SETUP_HPP_PROJECT ()

ADD_DOC_DEPENDENCY (agimus_sot)
ADD_DOC_DEPENDENCY (agimus_hpp)
ADD_DOC_DEPENDENCY (agimus)
ADD_DOC_DEPENDENCY (agimus_demos)
ADD_DOC_DEPENDENCY (hpp-manipulation-corba)

CONFIGURE_FILE (doc/main-page.hh.in ${CMAKE_BINARY_DIR}/doc/main-page.hh
  @ONLY)
CONFIGURE_FILE (doc/figures/talos-manipulate-boxes-geometric-simu.launch.dot.in
  ${CMAKE_BINARY_DIR}/doc/figures/talos-manipulate-boxes-geometric-simu.launch.dot
  @ONLY)

SETUP_HPP_PROJECT_FINALIZE ()
