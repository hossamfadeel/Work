#!../../bin/linux-x86_64/rfq

## You may have to change rfq to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/rfq.dbd"
rfq_registerRecordDeviceDriver pdbbase

#dbLoadDatabase "dbd/eipIoc.dbd"
#dbLoadDatabase "dbd/ether_ip.dbd"
#eipIoc_registerRecordDeviceDriver pdbbase

# Initialize EtherIP driver, define PLCs
EIP_buffer_limit(450)
drvEtherIP_init()

EIP_verbosity(7)

# drvEtherIP_define_PLC <name>, <ip_addr>, <slot>
# The driver/device uses the <name> to indentify the PLC.
# 
# <ip_addr> can be an IP address in dot-notation
# or a name about which the IOC knows.
# The IP address gets us to the ENET interface.
# To get to the PLC itself, we need the slot that
# it resides in. The first, left-most slot in the
# ControlLogix crate is slot 0.

drvEtherIP_define_PLC("plc1", "192.168.0.23", 0)
drvEtherIP_define_PLC("plc2", "192.168.0.24", 0)

cd ${TOP}/iocBoot/${IOC}

dbLoadRecords("$(TOP)/db/soft.db","S=SCL12-CM,D=SOFT")
#dbLoadRecords("$(TOP)/db/rfq.db","S=SCL12-CM,D=RFQ")
dbLoadRecords("$(TOP)/db/rfq.db","SYS=,D=")
#dbLoadRecords("$(TOP)/db/mebt.db","S=SCL12-CM,D=MEBT")

#drvAsynIPPortConfigure("L1","192.168.0.102:7777",0,0,0)
#drvAsynIPPortConfigure("L2","192.168.0.103:7777",0,0,0)

drvAsynIPPortConfigure("L1","192.168.0.11:7777",0,0,0)  # Lakeshore
#drvAsynIPPortConfigure("L2","192.168.0.12:7777",0,0,0)  # Lakeshore
drvAsynIPPortConfigure("L3","192.168.0.62:9221",0,0,0)  #  Sorensen
drvAsynIPPortConfigure("L4","192.168.0.61:9221",0,0,0)  #  Sorensen
iocInit

## Start any sequence programs
seq seqCryo,"sysname=SCL12-CM:RFQ:"

#
#===== Start up the autosave task and tell it what to do. =====================================
#save_restoreDebug=20
### Start up the save_restore task and tell it what to do.
# The task is actually named "save_restore".
#
# save positions every five seconds
#create_monitor_set("auto_positions.req",5,"P=$(P),M1=$(M1),M2=$(M2),M3=$(M3),M4=$(M4),M5=$(M5),M6=$(M6),M7=$(M7),M8=$(M8),R=$(R)")
# save other things every thirty seconds
#create_monitor_set("auto_settings.req",60,"P=$(P),M=P_SR")
#
# Handle autosave 'commands' contained in loaded databases.
## makeAutosaveFiles()
## create_monitor_set("info_positions.req",5,"P=$(P)")
## create_monitor_set("info_settings.req",30,"P=$(P)")
#
# =============================================================================================
### Start the saveData task. This fuction need from sscan record.
## saveData_Init("saveData.req","P=$(P)")
# 
