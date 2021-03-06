#!/usr/bin/expect -f
# ------------------------------------------------------------------------------
# Author: Stratos Giouldasis <giouldasis.stratos@gmail.com>
#
# Made with ❤ in Athens, Greece
#
# Configuration: Make sure config.tcl exists and contains all necessary
# variables. Defaults can be found in config.example.tcl
# ------------------------------------------------------------------------------
set SCRIPTPATH [ dict get [ info frame 0 ] file ]
set PROJECTPATH [file dirname $SCRIPTPATH]

source $PROJECTPATH/lib/common.tcl
source $PROJECTPATH/lib/init.tcl
source $PROJECTPATH/lib/ssh_to_server.tcl
source $PROJECTPATH/lib/export_$DB.tcl
source $PROJECTPATH/lib/download.tcl
source $PROJECTPATH/lib/import_$DB.tcl
source $PROJECTPATH/lib/shutdown.tcl