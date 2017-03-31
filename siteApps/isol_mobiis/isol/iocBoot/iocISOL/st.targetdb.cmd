dbLoadRecords("$(TOP)/db/devGenesys.db","SYS=$(SYS), DEV=HeaterPS, L=1")
drvAsynSerialPortConfigure("L1","/dev/ttyr06",0,0,0)
asynSetOption("L1",-1,"baud","9600")
asynSetOption("L1",-1,"bits","8")
asynSetOption("L1",-1,"parity","none")
asynSetOption("L1",-1,"stop","1")
asynSetOption("L1",-1,"clocal","Y")
asynSetOption("L1",-1,"crtscts","N")
#asynSetOption("L1",-1,"mode","2")
#asynSetTraceMask("L1",-1,0x9)
#asynSetTraceIOMask("L1",-1,0x2)

dbLoadRecords("$(TOP)/db/devGenesys.db","SYS=$(SYS), DEV=LinePS, L=2")
drvAsynSerialPortConfigure("L2","/dev/ttyr01",0,0,0)
asynSetOption("L2",-1,"baud","9600")
asynSetOption("L2",-1,"bits","8")
asynSetOption("L2",-1,"parity","none")
asynSetOption("L2",-1,"stop","1")
asynSetOption("L2",-1,"clocal","Y")
asynSetOption("L2",-1,"crtscts","N")

dbLoadRecords("$(TOP)/db/devGenesys.db","SYS=$(SYS), DEV=OvenPS, L=3")
drvAsynSerialPortConfigure("L3","/dev/ttyr02",0,0,0)
asynSetOption("L3",-1,"baud","9600")
asynSetOption("L3",-1,"bits","8")
asynSetOption("L3",-1,"parity","none")
asynSetOption("L3",-1,"stop","1")
asynSetOption("L3",-1,"clocal","Y")
asynSetOption("L3",-1,"crtscts","N")

dbLoadRecords("$(TOP)/db/devGenesys.db","SYS=$(SYS), DEV=MagnetPS, L=4")
drvAsynSerialPortConfigure("L4","/dev/ttyr03",0,0,0)
asynSetOption("L4",-1,"baud","9600")
asynSetOption("L4",-1,"bits","8")
asynSetOption("L4",-1,"parity","none")
asynSetOption("L4",-1,"stop","1")
asynSetOption("L4",-1,"clocal","Y")
asynSetOption("L4",-1,"crtscts","N")

dbLoadRecords("$(TOP)/db/devGenesys.db","SYS=$(SYS), DEV=AnodePS, L=5")
drvAsynSerialPortConfigure("L5","/dev/ttyr04",0,0,0)
asynSetOption("L5",-1,"baud","9600")
asynSetOption("L5",-1,"bits","8")
asynSetOption("L5",-1,"parity","none")
asynSetOption("L5",-1,"stop","1")
asynSetOption("L5",-1,"clocal","Y")
asynSetOption("L5",-1,"crtscts","N")

